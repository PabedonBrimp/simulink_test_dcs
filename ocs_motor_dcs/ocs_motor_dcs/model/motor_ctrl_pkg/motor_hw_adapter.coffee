Adapter            'motor_hw_adapter',
    info:          'motor Hardware Adapter'
    desc:          'This component defines the interface with the simulated motor'
    abstract:      false
    extends:       ['HwAdapter']
    uses:          ["ocs_core_fwk", "ocs_io_fwk"]

    # Management attributes:
    instances:     1
    c_factor:      1
    r_factor:      1
    procurement:   "swc"
    phase:         "design"
    resource:      "labor"
    assignee:      "cplubell"
    fte_perc:      "100"
    status:        "NON_STARTED"
    activity_type: "activity"
    release:       [1]
    stage:         "1"

    input_ports:
        speed: { type: 'input_ports_struct', protocol: 'pull', max_rate: 1000, blocking_mode: 'async', desc: 'Speed of simulated motor' }


    output_ports:
        voltage: { type: 'output_ports_struct', protocol: 'push', max_rate: 1000, blocking_mode: 'async', desc: 'Simulated voltage applied to simulated motor' }

    properties:
        uri:       {default: "gmt://motor_dcs/motor_hw_adapter"}
        name:      {default: "motor_hw_adapter"}
        host:      {default: "127.0.0.1"}
        port:      {default: 29998}
        scan_rate: {default: 100}

    instance_configurations: ['motor_hw1_adapter']
