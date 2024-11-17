# Digital Clock Simulation

This project is a VHDL simulation of a digital clock, created as part of the CSEN605 course at the German University in Cairo.

## Project Structure

- **Entity**: `digital_clock_tb`
- **Architecture**: `behavioral`
- **Signals**:
  - `clk`: Clock signal
  - `reset`: Reset signal
  - `seconds`: Seconds counter
  - `minutes`: Minutes counter
  - `hours`: Hours counter
- **Constants**:
  - `clk_period`: Clock period (adjustable for desired frequency)

## Processes

Clock Generation Process

Generates the clock signal by toggling `clk` every half period.

### Stimulus Process

Applies a reset signal for a few clock cycles and then lets the clock run indefinitely.

## Usage

To run the simulation, use a VHDL simulator such as ModelSim or GHDL. Load the digital_clock_tb entity and observe the behavior of the clock signals.

## License

This project is for educational purposes only and does not have a specific license.