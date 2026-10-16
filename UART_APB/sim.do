# Create work library
vlib work

# Compile all design files in correct order
vlog top.v
vlog apb_slave.v
vlog register.v
vlog baud_gen.v
vlog receive_FIFO.v
vlog send_FIFO.v
vlog receiver.v
vlog transmitter.v

# Compile testbenches
vlog test_bench.v

# Start simulation with one primary testbench
vsim -novopt work.test_bench

# Add waves
add wave -position insertpoint sim:/test_bench/*

# Run simulation
run -all

#Exit simulation
quit -sim