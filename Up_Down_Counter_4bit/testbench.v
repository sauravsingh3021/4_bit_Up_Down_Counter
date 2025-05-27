`timescale 1ns / 1ps

module tb_up_down_counter_4bit;

    // Inputs
    reg clk;
    reg rst;
    reg up_down;

    // Output
    wire [3:0] count;

    // Instantiate the DUT
    up_down_counter_4bit uut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end

    // Test scenario
    initial begin
        // Initialize
        rst = 1;
        up_down = 1; // Start with up count
        #10;
        rst = 0;

        // Count up for a few cycles
        #100;

        // Switch to down count
        up_down = 0;
        #100;

        // Reset again
        rst = 1;
        #10;
        rst = 0;

        // Count up again
        up_down = 1;
        #100;

        $finish;
    end

    // Monitor
    initial begin
        $display("Time\tclk\trst\tup_down\tcount");
        $monitor("%0dns\t%b\t%b\t%b\t%0d", $time, clk, rst, up_down, count);
    end

endmodule
