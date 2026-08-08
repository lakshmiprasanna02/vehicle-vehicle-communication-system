module v2v_communication(
input clk,
input reset,
input tx_enable,
input [7:0] vehicle_id,
input [7:0] speed,
input emergency,

output reg [7:0] rx_vehicle_id,
output reg [7:0] rx_speed,
output reg rx_emergency
);

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        rx_vehicle_id <= 8'd0;
        rx_speed <= 8'd0;
        rx_emergency <= 1'b0;
    end

    else if(tx_enable)
    begin
        rx_vehicle_id <= vehicle_id;
        rx_speed <= speed;
        rx_emergency <= emergency;
    end
end

endmodule