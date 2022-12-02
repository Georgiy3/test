module testTask(input start, output reg endWorkTest);
    reg clk=1;
    reg m_dump=0;
    reg c_dump = 0;
    reg reset=0;

    wire[15:0] data1;
    wire[13:0] addr1;
    wire[2:0] ctrl1;
    wire[15:0] data2;
    wire[13:0] addr2;
    wire[1:0] ctrl2;

    wire endWork;
    reg  startWork;

    Mem mem(m_dump, clk, reset, addr2, data2, ctrl2);
    Cache cahce(c_dump, clk, reset, addr1, data1, ctrl1, addr2, data2, ctrl2);
    CPU #(64,60,32) cpu(clk, addr1, data1, ctrl1, endWork, startWork);

    always #1 begin clk=~clk; end

  initial
    begin
        endWorkTest = 0; 
        wait(start);
        startWork = 1;
        wait(endWork);
        $display("time = %0d", $time);
        #1 c_dump = 1;
        #1 c_dump = 0;
        endWorkTest = 1;
    end
endmodule

