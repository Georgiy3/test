module testCPU #(parameter M = 3, N = 3, K = 2)(input start, output reg endWorkTest);
    reg clk=1;
    reg m_dump=0;
    reg c_dump = 0;
    reg reset=0;

    wire[15:0] data2;
    wire[13:0] addr2;
    wire[1:0] ctrl2;

    wire[13:0] addr1;
    wire[13:0] CPU_addr1;
    reg ctrl_CPU_write_addr = 0;
    reg[13:0] reg_addr1;
    bufif1 buf_addr_CPU[13:0](addr1, CPU_addr1, ctrl_CPU_write_addr);
    bufif1 buf_addr[13:0](addr1, reg_addr1, ~ctrl_CPU_write_addr);
    
    wire[15:0] data1;
    reg[15:0] reg_data1;
    reg ctrl_read_data1 = 0;
    bufif1 buf_data[15:0](data1, reg_data1, ctrl_read_data1);

    wire[2:0] ctrl1;
    reg[2:0] reg_ctrl1;
    reg ctrl_read_ctrl1 = 0;
    bufif1 buf_ctrl[2:0](ctrl1, reg_ctrl1, ctrl_read_ctrl1);

    wire endWork;
    reg startWork = 0;

    Mem mem(m_dump, clk, reset, addr2, data2, ctrl2);
    Cache cahce(c_dump, clk, reset, addr1, data1, ctrl1, addr2, data2, ctrl2);
    CPU #(M, N, K) cpu(clk, CPU_addr1, data1, ctrl1, endWork, startWork);

    integer i;

    reg signed[7:0] dataA[M * K - 1:0];
    reg signed[15:0] dataB[N * K - 1:0];
    reg signed[31:0] dataC[M * N - 1:0];
    reg[17:0] allAddr;

    always #1 begin clk=~clk; end

    initial
    begin
        endWorkTest = 0;
        wait(start);
        dataA[0] = 1;
        dataA[1] = 2;
        dataA[2] = 0;
        dataA[3] = 3;
        dataA[4] = -2;
        dataA[5] = -1;

        dataB[0] = 0;
        dataB[1] = 1;
        dataB[2] = 2;
        dataB[3] = 3;
        dataB[4] = -3;
        dataB[5] = 1;
        #2
        for (i = 0; i < M * K; i += 1) begin
            allAddr = i;
            reg_addr1 = allAddr[17:4];
            reg_ctrl1 = 5;
            ctrl_read_ctrl1 = 1;
            reg_data1[7:0] = dataA[i];
            ctrl_read_data1 = 1;
            wait(!clk);
            wait(clk);
            reg_addr1 = allAddr[3:0];
            wait(!clk);
            wait(clk);
            ctrl_read_ctrl1 = 0;
            ctrl_read_data1 = 0;
            wait((ctrl1 == 7) & clk);
            wait(!clk);
            wait(clk);
        end
        for (i = 0; i < N * K; i += 1) begin
            allAddr = M * K + i * 2;
            reg_addr1 = allAddr[17:4];
            reg_ctrl1 = 6;
            ctrl_read_ctrl1 = 1;
            reg_data1 = dataB[i];
            ctrl_read_data1 = 1;
            wait(!clk);
            wait(clk);
            reg_addr1 = allAddr[3:0];
            wait(!clk);
            wait(clk);
            ctrl_read_ctrl1 = 0;
            ctrl_read_data1 = 0;
            wait((ctrl1 == 7) & clk);
            wait(!clk);
            wait(clk);
        end
        ctrl_CPU_write_addr = 1;
        startWork = 1;
        #1 startWork = 0;
        wait(endWork == 1);
        ctrl_CPU_write_addr = 0;
        wait(clk);
        for (i = 0; i < M * N; i += 1) begin
            allAddr = (M + N * 2) * K + ((4 - ((M + N * 2) * K % 4)) % 4) + i * 4;
            reg_addr1 = allAddr[17:4];
            reg_ctrl1 = 3;
            ctrl_read_ctrl1 = 1;
            wait(!clk);
            wait(clk);
            reg_addr1 = allAddr[3:0];
            wait(!clk);
            wait(clk);
            ctrl_read_ctrl1 = 0;
            wait((ctrl1 == 7) & clk);
            dataC[i][15:0] = data1;
            wait(!clk);
            wait(clk);
            dataC[i][31:16] = data1;
            wait(!clk);
            wait(clk);
            $display("dataC[%0d] = %0d", i, dataC[i]);
        end
        endWorkTest = 1;
    end
endmodule