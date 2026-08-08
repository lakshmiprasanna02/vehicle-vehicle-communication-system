`timescale 1ns/1ps

module tb_v2v_communication;

reg clk;
reg reset;
reg tx_enable;
reg [7:0] vehicle_id;
reg [7:0] speed;
reg emergency;

wire [7:0] rx_vehicle_id;
wire [7:0] rx_speed;
wire rx_emergency;

v2v_communication uut(
.clk(clk),
.reset(reset),
.tx_enable(tx_enable),
.vehicle_id(vehicle_id),
.speed(speed),
.emergency(emergency),
.rx_vehicle_id(rx_vehicle_id),
.rx_speed(rx_speed),
.rx_emergency(rx_emergency)
);

always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;
tx_enable = 0;
vehicle_id = 0;
speed = 0;
emergency = 0;

#20;

reset = 0;

vehicle_id = 8'd25;
speed = 8'd60;
emergency = 0;
tx_enable = 1;

#20;

vehicle_id = 8'd40;
speed = 8'd90;
emergency = 1;

#20;

tx_enable = 0;

#20;

$finish;

end

endmodule