`include "mem.sv"
`include "cache.sv"
`include "CPU.sv"
`include "testMem.sv"
`include "testCache.sv"
`include "testCPU.sv"
`include "testTask.sv"

module main;
    reg startTestMem = 0;
    wire endTestMem;
    testMem mem(startTestMem, endTestMem);

    reg startTestCache = 0;
    wire endTestCache;
    testCache cache(startTestCache, endTestCache);
    
    reg startTestCPU = 0;
    wire endTestCPU;
    testCPU cpu(startTestCPU, endTestCPU);
    
    reg startTestTask = 0;
    wire endTestTask;
    testTask testTask(startTestTask, endTestTask);

    initial
    begin
        $display("Test mem:");
        startTestMem = 1;
        wait(endTestMem);
        $display("==================================\nTest cache:");
        startTestCache = 1;
        wait(endTestCache);
        $display("==================================\nTest CPU:");
        startTestCPU = 1;
        wait(endTestCPU);
        $display("==================================\nTask:");
        startTestTask = 1;
        wait(endTestTask);
        $finish;
    end
endmodule
