# Vehicle-to-Vehicle (V2V) Communication System

## Overview
This project demonstrates a simple Vehicle-to-Vehicle (V2V) Communication System using Verilog HDL. Two vehicles exchange data such as vehicle ID, speed, and emergency status. The receiver displays the transmitted information successfully during simulation.

## Features
- Vehicle data transmission
- Vehicle ID transfer
- Speed transfer
- Emergency alert transmission
- Simple Verilog implementation
- Testbench included

## Tools Used
- Verilog HDL
- ModelSim / Vivado Simulator

## Inputs
- clk
- reset
- tx_enable
- vehicle_id
- speed
- emergency

## Outputs
- rx_vehicle_id
- rx_speed
- rx_emergency

## Simulation
Run the testbench to verify that the transmitted data is correctly received.

## Future Improvements
- Wireless communication model
- Multiple vehicle communication
- Collision avoidance
- FPGA implementation