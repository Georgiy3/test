module testMem(input start, output reg endWork);
    reg clk=1;
    reg m_dump=0;
    reg reset=0;
    reg[13:0] addr;

    reg [127:0] allData;

    wire[15:0] data;
    reg[15:0] reg_data;
    reg ctrl_read_data = 0;
    bufif1 buf_data[15:0](data, reg_data, ctrl_read_data);

    wire[1:0] ctrl;
    reg[1:0] reg_ctrl;
    reg ctrl_read_ctrl = 0;
    bufif1 buf_ctrl[1:0](ctrl, reg_ctrl, ctrl_read_ctrl);

    Mem mem(m_dump, clk, reset, addr, data, ctrl);

    always #1 begin clk=~clk; end

    initial
    begin 
        endWork = 0;
        wait(start);
        $monitor("addr = %b, data = %h, ctrl = %0d, time = %0d", addr, data, ctrl, $time);
        #1 //C2_WRITE_LINE
        wait(!clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 3;
        ctrl_read_ctrl = 1;
        reg_data = 16'h1234;
        ctrl_read_data = 1;
        wait(clk);
        wait(!clk);
        reg_data = 16'h0000;
        wait(clk);
        wait(!clk);
        reg_data = 16'haa66;
        wait(clk);
        wait(!clk);
        reg_data = 16'hffff;
        wait(clk);
        wait(!clk);
        reg_data = 16'h1111;
        wait(clk);
        wait(!clk);
        reg_data = 16'h2222;
        wait(clk);
        wait(!clk);
        reg_data = 16'h3333;
        wait(clk);
        wait(!clk);
        reg_data = 16'h4444;
        wait(clk);
        wait(!clk);
        ctrl_read_ctrl = 0;
        ctrl_read_data = 0;
        wait((ctrl == 1) & !clk);
        $display("time = %0d", $time);
        //C2_READ_LINE
        wait(clk);
        wait(!clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 2;
        ctrl_read_ctrl = 1;
        wait(clk);
        wait(!clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 1) & !clk);
        allData[15:0] = data;
        wait(clk);
        wait(!clk);
        allData[31:16] = data;
        wait(clk);
        wait(!clk);
        allData[47:32] = data;
        wait(clk);
        wait(!clk);
        allData[63:48] = data;
        wait(clk);
        wait(!clk);
        allData[79:64] = data;
        wait(clk);
        wait(!clk);
        allData[95:80] = data;
        wait(clk);
        wait(!clk);
        allData[111:96] = data;
        wait(clk);
        wait(!clk);
        allData[127:112] = data;
        $display("time = %0d, allData = %h", $time, allData);
        endWork = 1;
    end
endmodule