//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 03/15/2017 03:04:18 AM
//// Design Name: 
//// Module Name: main
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////

module main(
    input CLK100MHZ,
    output Q,
    output E
    );

    reg [3:0] clock_dividing_counter;
    reg q;
    reg e;
    
    clk_wiz_0 MyCLK4MHZ(.clk_in1(CLK100MHZ), .clk_out1(clk16mhz));

    assign Q = q;
    assign E = e;
    
    always @ (posedge(clk16mhz))
    begin
        case(clock_dividing_counter)
            0: e <= 0;
            4: q <= 1;
            8: e <= 1;
            12: q <= 0;
        endcase
        clock_dividing_counter <= clock_dividing_counter + 1;
    end
endmodule
