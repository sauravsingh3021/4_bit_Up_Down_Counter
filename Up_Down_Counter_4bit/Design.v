module up_down_counter_4bit (
    input wire clk,
    input wire rst,          // active-high reset
    input wire up_down,      // 1 for up, 0 for down
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (rst) begin
            count <= 4'd3;
        end else begin
            if (up_down) begin
                // Up count
                if (count == 4'd15)
                    count <= 4'd3;
                else
                    count <= count + 1;
            end else begin
                // Down count
                if (count == 4'd3)
                    count <= 4'd15;
                else
                    count <= count - 1;
            end
        end
    end

endmodule
