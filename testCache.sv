module testCache(input start, output reg endWork);
    reg clk=1;
    reg c_dump=0;
    reg reset=0;
    reg[13:0] addr;

    reg [127:0] allData;

    wire[15:0] data;
    reg[15:0] reg_data;
    reg ctrl_read_data = 0;
    bufif1 buf_data[15:0](data, reg_data, ctrl_read_data);

    wire[2:0] ctrl;
    reg[2:0] reg_ctrl;
    reg ctrl_read_ctrl = 0;
    bufif1 buf_ctrl[2:0](ctrl, reg_ctrl, ctrl_read_ctrl);

    wire[13:0] addr2;
    wire[15:0] data2;
    wire[1:0] ctrl2;

    Mem mem(m_dump, clk, reset, addr2, data2, ctrl2);
    Cache cahce(c_dump, clk, reset, addr, data, ctrl, addr2, data2, ctrl2);

    integer i;

    always #1 begin clk=~clk; end

    initial
    begin 
        endWork = 0;
        wait(start);
        $monitor("addr = %b, data = %h, ctrl = %0d, time = %0d", addr, data, ctrl, $time);
        #1
        $display("C1_WRITE8");
        wait(clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 5;
        ctrl_read_ctrl = 1;
        reg_data = 16'haa11;
        ctrl_read_data = 1;
        wait(!clk);
        wait(clk);
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        ctrl_read_data = 0;
        wait((ctrl == 7) & clk);
        $display("time = %0d", $time);

        $display("\nC1_WRITE16");
        wait(!clk);
        wait(clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 6;
        ctrl_read_ctrl = 1;
        reg_data = 16'h2222;
        ctrl_read_data = 1;
        wait(!clk);
        wait(clk);
        addr = 1;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        ctrl_read_data = 0;
        wait((ctrl == 7) & clk);
        $display("time = %0d", $time);

        $display("\nC1_WRITE32");
        wait(!clk);
        wait(clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 7;
        ctrl_read_ctrl = 1;
        reg_data = 16'h3333;
        ctrl_read_data = 1;
        wait(!clk);
        wait(clk);
        addr = 3;
        reg_data = 16'h3333;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        ctrl_read_data = 0;
        wait((ctrl == 7) & clk);
        $display("time = %0d", $time);

        $display("\nC1_READ8");
        wait(!clk);
        wait(clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 1;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 6;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        allData[55:48] = data[7:0];
        $display("time = %0d", $time);

        $display("\nC1_READ16");
        wait(!clk);
        wait(clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 2;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 4;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        allData[47:32] = data;
        $display("time = %0d", $time);

        $display("\nC1_READ32");
        wait(!clk);
        wait(clk);
        $display("time = %0d", $time);
        addr = 0;
        reg_ctrl = 3;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        allData[15:0] = data;
        wait(!clk);
        wait(clk);
        allData[31:16] = data;
        wait(!clk);
        wait(clk);
        $display("time = %0d, allData = %h\n", $time, allData);
        $monitor("");

        addr = 16'h0040;
        reg_ctrl = 6;
        ctrl_read_ctrl = 1;
        reg_data = 16'h4444;
        ctrl_read_data = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        ctrl_read_data = 0;
        wait((ctrl == 7) & clk);
        c_dump = 1;
        #1 c_dump = 0;
        
        wait(!clk);
        wait(clk);
        $display("time = %0d", $time);
        addr = 16'h0080;
        reg_ctrl = 6;
        ctrl_read_ctrl = 1;
        reg_data = 16'h5555;
        ctrl_read_data = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        ctrl_read_data = 0;
        wait((ctrl == 7) & clk);
        $display("time = %0d", $time);
        c_dump = 1;
        #1 c_dump = 0;

        
        wait(!clk);
        wait(clk);
        addr = 0;
        reg_ctrl = 1;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 6;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        allData[55:48] = data[7:0];
        wait(!clk);
        wait(clk);
        addr = 0;
        reg_ctrl = 2;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 4;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        allData[47:32] = data;
        wait(!clk);
        wait(clk);
        addr = 0;
        reg_ctrl = 3;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        allData[15:0] = data;
        wait(!clk);
        wait(clk);
        allData[31:16] = data;
        wait(!clk);
        wait(clk);
        $display("time = %0d, allData = %h", $time, allData);
        #1 c_dump = 1;
        #1 c_dump = 0;

        wait(clk);
        $display("\nC1_INVALIDATE_LINE (dirt = 1)");
        $display("time start = %0d", $time);
        addr = 16'h0080;
        reg_ctrl = 4;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        $display("time end = %0d", $time);
        wait(!clk);

        $display("\nC1_INVALIDATE_LINE (dirt = 0)");
        wait(clk);
        $display("time start = %0d", $time);
        addr = 0;
        reg_ctrl = 4;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        $display("time end = %0d", $time);
        wait(!clk);
        
        $display("\nC1_INVALIDATE_LINE (line is not cached)");
        wait(clk);
        $display("time start = %0d", $time);
        addr = 16'h0040;
        reg_ctrl = 4;
        ctrl_read_ctrl = 1;
        wait(!clk);
        wait(clk);
        addr = 0;
        wait(!clk);
        wait(clk);
        ctrl_read_ctrl = 0;
        wait((ctrl == 7) & clk);
        $display("time end = %0d", $time);

        #1 c_dump = 1;
        #1 c_dump = 0;
        
        endWork = 1;
    end
endmodule
