module CPU #(parameter M = 64, N = 60, K = 32)(
    input clk,
    output reg[13:0] addr,
    inout[15:0] data,
    inout[2:0] ctrl,
    output reg endWork,
    input startWork
);
    
    reg[15:0] reg_data;
    reg ctrl_read_data = 0;
    bufif1 buf_data[15:0](data, reg_data, ctrl_read_data);

    reg[2:0] reg_ctrl;
    reg ctrl_read_ctrl = 0;
    bufif1 buf_ctrl[2:0](ctrl, reg_ctrl, ctrl_read_ctrl);

    reg signed[7:0] elA;
    reg signed[15:0] elB;
    reg signed[31:0] s;

    reg[17:0] pa;
    reg[17:0] pb;
    reg[17:0] pc;

    reg[17:0] a = 0;
    reg[17:0] b = M * K + (M * K % 2);
    reg[17:0] c = (M + N * 2) * K + ((4 - ((M + N * 2) * K % 4)) % 4);

    reg[17:0] allAddr;
    reg[17:0] allAddr2;

    integer x;
    integer y;
    integer k;

    always @(posedge startWork)
    begin
        endWork = 0;
        #2 pa = a;
        #2 pc = c;
        for (y = 0; y < M; y += 1) begin
            #2
            for (x = 0; x < N; x += 1) begin
                #2
                #2 pb = b;
                #2 s = 0;
                for (k = 0; k < K; k += 1) begin
                    #2
                    #2 allAddr = pa + k;
                    #2 allAddr2 = pb + (x << 1);
                    wait(clk);
                    addr = allAddr[17:4];
                    reg_ctrl = 1;
                    ctrl_read_ctrl = 1;
                    wait(!clk);
                    wait(clk);
                    addr = allAddr[3:0];
                    wait(!clk);
                    wait(clk);
                    ctrl_read_ctrl = 0;
                    wait((ctrl == 7) & clk);
                    elA = data[7:0];
                    wait(!clk);
                    wait(clk);

                    addr = allAddr2[17:4];
                    reg_ctrl = 2;
                    ctrl_read_ctrl = 1;
                    wait(!clk);
                    wait(clk);
                    addr = allAddr2[3:0];
                    wait(!clk);
                    wait(clk);
                    ctrl_read_ctrl = 0;
                    wait((ctrl == 7) & clk);
                    elB = data;
                    
                    #12 s += elA * elB;
                    #2 pb += (N << 1);
                end
                
                #2 allAddr = pc + (x << 2);
                wait(clk);
                addr = allAddr[17:4];
                reg_data = s[15:0];
                reg_ctrl = 7;
                ctrl_read_ctrl = 1;
                ctrl_read_data = 1;
                wait(~clk);
                wait(clk);
                addr = allAddr[3:0];
                reg_data = s[31:16];
                wait(~clk);
                wait(clk);
                ctrl_read_data = 0;
                ctrl_read_ctrl = 0;
                wait((ctrl == 7) & clk);
            end
            #2 pa += K;
            #2 pc += N << 2;
        end
        #2
        endWork = 1;

    end

endmodule