module Cache #(parameter CACHE_LINE_SIZE = 16, CACHE_SET_SIZE = 64)(
    input c_dump, input clk, input reset,
    input[13:0] addr1,
    inout[15:0] data1,
    inout[2:0] ctrl1,
    output reg[13:0] addr2,
    inout[15:0] data2,
    inout[1:0] ctrl2
    );
    reg[15:0] reg_data1;
    reg ctrl_read_data1 = 0;
    bufif1 buf_data1[15:0](data1, reg_data1, ctrl_read_data1);

    reg[2:0] reg_ctrl1;
    reg ctrl_read_ctrl1 = 0;
    bufif1 buf_ctrl1[2:0](ctrl1, reg_ctrl1, ctrl_read_ctrl1);

    reg[15:0] reg_data2;
    reg ctrl_read_data2 = 0;
    bufif1 buf_data2[15:0](data2, reg_data2, ctrl_read_data2);

    reg[1:0] reg_ctrl2;
    reg ctrl_read_ctrl2 = 0;
    bufif1 buf_ctrl2[1:0](ctrl2, reg_ctrl2, ctrl_read_ctrl2);

    reg[CACHE_LINE_SIZE*8-1:0] set[1:0][CACHE_SET_SIZE - 1:0];
    reg[7:0] set_tag[1:0][CACHE_SET_SIZE - 1:0];
    reg[2:0] set_info[1:0][CACHE_SET_SIZE - 1:0];

    reg[17:0] addr;
    reg[31:0] data;

    integer i;
    integer j;
    integer cahceHit = 0;
    integer appeal = 0;
    reg numLine;
    reg[2:0] copyCtrl;

    always @(posedge c_dump) begin
        $display("count appeal = %0d, count cache hit = %0d", appeal, cahceHit);
        for (i = 0; i < CACHE_SET_SIZE; i += 1) begin
            $display("Set%0d:", i + 1);
            $display("%b %b %h", set_info[0][i], set_tag[0][i], set[0][i]);
            $display("%b %b %h", set_info[1][i], set_tag[1][i], set[1][i]);
        end
    end

    always @(clk)
    if (reset | $time == 1) begin
        for (i = 0; i < CACHE_SET_SIZE; i += 1) begin
            set_info[0][i] = 0;
            set_info[1][i] = 0;
        end
    end

    always @(negedge clk) begin
        copyCtrl = ctrl1;
        if (ctrl1 != 0) begin
            addr[17:4] = addr1;
            if (ctrl1[2] & ctrl1[1:0] != 0) data[15:0] = data1;
            wait(clk);
            wait(~clk);
            if (ctrl1[2:0] == 3'b111) data[31:16] = data1;
            addr[3:0] = addr1[3:0];
        end
        if(copyCtrl[1:0] != 0) begin
            appeal += 1;
            if ((~set_info[0][addr[9:4]][2] | set_tag[0][addr[9:4]] != addr[17:10]) &
             (~set_info[1][addr[9:4]][2] | set_tag[1][addr[9:4]] != addr[17:10])) begin

                if (~set_info[0][addr[9:4]][2] | set_info[1][addr[9:4]][2] & set_info[0][addr[9:4]][0] == 0) numLine = 0;
                else numLine=1;
                #6
            
                if (set_info[numLine][addr[9:4]][2:1] == 2'b11) begin
                    wait (!clk);
                    addr2[5:0] = addr[9:4];
                    addr2[13:6] = set_tag[numLine][addr[9:4]];
                    ctrl_read_ctrl2 = 1;
                    reg_ctrl2 = 3;
                    ctrl_read_data2 = 1;
                    for (i = 0; i < CACHE_LINE_SIZE >> 1; i += 1) begin
                        for (j = 0; j < 16; j = j+1) reg_data2[j] = set[numLine][addr[9:4]][i*16+j];
                        wait (clk);
                        wait (!clk);
                    end
                    ctrl_read_ctrl2 = 0;
                    ctrl_read_data2 = 0;
                    wait((ctrl2 == 1) & !clk);
                    wait(clk);
                end

                wait(!clk);
                addr2[13:0] = addr[17:4];
                ctrl_read_ctrl2 = 1;
                reg_ctrl2 = 2;
                wait(clk);
                wait(!clk);
                ctrl_read_ctrl2 = 0;
                wait((ctrl2 == 1) & !clk);
                for (j = 0; j < 16; j = j+1) set[numLine][addr[9:4]][j] = data2[j];
                for (i = 1; i < CACHE_LINE_SIZE >> 1; i += 1) begin
                    wait (clk);
                    wait (!clk);
                    for (j = 0; j < 16; j = j+1) set[numLine][addr[9:4]][i*16+j] = data2[j];
                end
                
                set_tag[numLine][addr[9:4]] = addr2[13:6];
                set_info[numLine][addr[9:4]][2:1] = 2'b10;
            end else #10 cahceHit += 1;

            if (set_info[0][addr[9:4]][2] & set_tag[0][addr[9:4]] == addr[17:10]) numLine = 0;
            else numLine = 1;
            set_info[numLine][addr[9:4]][0] = 1;
            set_info[~numLine][addr[9:4]][0] = 0;
            wait(!clk);
            reg_ctrl1 = 7;
            ctrl_read_ctrl1 = 1;
            if (copyCtrl[2]) begin
                set_info[numLine][addr[9:4]][1] = 1;
                for (i = addr[3:0] * 8; i < addr[3:0] * 8 + (4 << copyCtrl[1:0]) & i < CACHE_LINE_SIZE * 8; i += 1) begin
                    set[numLine][addr[9:4]][i] = data[i - addr[3:0] * 8];
                end
                wait(clk);
                wait(!clk);
            end else begin
                ctrl_read_data1 = 1;
                for (i = addr[3:0] * 8; i < addr[3:0] * 8 + (8 << copyCtrl[1]) & i < CACHE_LINE_SIZE * 8; i += 1) begin
                     reg_data1[i - addr[3:0] * 8] = set[numLine][addr[9:4]][i];
                end
                wait(clk);
                wait(!clk);
                if (copyCtrl[1:0] == 3) begin
                    for (i = addr[3:0] * 8 + 16; i < addr[3:0] * 8 + 32 & i < CACHE_LINE_SIZE * 8; i += 1) begin
                        reg_data1[i - addr[3:0] * 8 - 16] = set[numLine][addr[9:4]][i];
                    end
                    wait(clk);
                    wait(!clk);
                end
                ctrl_read_data1 = 0;
            end
            ctrl_read_ctrl1 = 0;
        end 
        else if (copyCtrl == 4) begin
            if (set_info[0][addr[9:4]][2] & set_tag[0][addr[9:4]] == addr[17:10] |
             set_info[1][addr[9:4]][2] & set_tag[1][addr[9:4]] == addr[17:10]) begin
                if (set_info[0][addr[9:4]][2] & set_tag[0][addr[9:4]] == addr[17:10]) numLine = 0;
                else numLine=1;
                
                if (set_info[numLine][addr[9:4]][2:1] == 2'b11) begin
                    #6
                    wait (!clk);
                    addr2[5:0] = addr[9:4];
                    addr2[13:6] = set_tag[numLine][addr[9:4]];
                    ctrl_read_ctrl2 = 1;
                    reg_ctrl2 = 3;
                    ctrl_read_data2 = 1;
                    for (i = 0; i < CACHE_LINE_SIZE >> 1; i += 1) begin
                        for (j = 0; j < 16; j = j+1) reg_data2[j] = set[numLine][addr[9:4]][i*16+j];
                        wait (clk);
                        wait (!clk);
                    end
                    ctrl_read_ctrl2 = 0;
                    ctrl_read_data2 = 0;
                    wait((ctrl2 == 1) & !clk);
                end else #10;
                set_info[numLine][addr[9:4]][2] = 0;
            end else #10;
            wait(!clk);
            ctrl_read_ctrl1 = 1;
            reg_ctrl1 = 7;
            wait(clk);
            wait(!clk);
            ctrl_read_ctrl1 = 0;
        end
    end
endmodule
