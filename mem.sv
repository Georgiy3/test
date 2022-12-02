module Mem #(parameter CACHE_LINE_SIZE = 16, MEM_SIZE = 262144, _SEED = 225526)(
    input m_dump, input clk, input reset,
    input[13:0] addr,
    inout[15:0] data,
    inout[1:0] ctrl
);
    reg[15:0] reg_data;
    reg ctrl_read = 0;
    bufif1 buf_data[15:0](data, reg_data, ctrl_read);

    reg[1:0] reg_ctrl;
    reg ctrl_read_ctrl = 0;
    bufif1 buf_ctrl[1:0](ctrl, reg_ctrl, ctrl_read_ctrl);

    reg[CACHE_LINE_SIZE * 8 - 1:0] mem[MEM_SIZE / CACHE_LINE_SIZE - 1:0];

    integer i;
    integer j;

    always @(posedge m_dump) begin
        $display("Mem dump:");
        for (i = 0;i < MEM_SIZE / CACHE_LINE_SIZE; i += 1) begin
            $display("%h", mem[i]);
        end
    end

    integer n;
    integer SEED = _SEED;
    reg[7:0] a;
    always @(clk)
        if (reset | $time == 1) begin
        for (i = 0; i < MEM_SIZE / CACHE_LINE_SIZE; i += 1)
        for (j = 0; j < CACHE_LINE_SIZE; j += 1) begin
            a = $random(SEED) >> 16;
            for (n = 0; n < 8; n += 1)
                mem[i][j * 8 + n] = a[n];
        end
    end

    always @(posedge clk) begin
        if (ctrl == 3) begin
          for (i = 0; i < CACHE_LINE_SIZE >> 1; i += 1) begin
            for (j = 0; j < 16; j = j+1) mem[addr][i*16+j] = data[j];
            wait (!clk);
            wait (clk);
          end
            #(200 - CACHE_LINE_SIZE)
            wait(clk);
            reg_ctrl = 1;
            ctrl_read_ctrl = 1;
            wait(!clk);
            wait (clk);
            ctrl_read_ctrl = 0;
        end
        else if (ctrl == 2) begin
            #200
            wait (clk);
            reg_ctrl = 1;
            ctrl_read_ctrl = 1;
            ctrl_read = 1;
            for (i = 0; i < CACHE_LINE_SIZE >> 1; i += 1) begin
              for (j = 0; j < 16; j += 1) reg_data[j] = mem[addr][i*16+j];
              wait (!clk);
              wait (clk);
            end
            ctrl_read = 0;
            ctrl_read_ctrl = 0;
        end
    end
endmodule
