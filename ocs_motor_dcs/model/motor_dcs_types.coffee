StructType "input_ports_struct",
    desc: "Members of the input port"
    elements:
        voltage: { desc: "Simulated voltage applied to simulated motor", type: "float64", units: "Volts" }

StructType "output_ports_struct",
    desc: "Members of the output port"
    elements:
        speed: { desc: "Simulated speed of the simulated motor", type: "float64", units: "Motor feedback units/sec" }