
Controller         'motor_ctrl',
    info:          'Motor Simulation Controller'
    desc:          'This component implements control of a simulated motor'
    extends:       ['BaseController']
    abstract:      false
    uses:          ["ocs_core_fwk", "ocs_ctrl_fwk"]

    instances:     1
    c_factor:      1
    r_factor:      1
    procurement:   "swc"
    phase:         "design"
    resource:      "labor"
    assignee:      "Charles Plubell"
    fte_perc:      "100"
    status:        "In Progress"
    activity_type: "activity" # What is this?
    release:       [1]
    stage:         "1"

    # state_vars:
    #     azimuth_position: 
    #         desc: "Azimuth position"
    #         type: "float64"
    #         units: "mas"
    #         max_rate: 2000
    #         blocking_mode: "async"
    #         default: 0.0
    #         max: 1e9 # TODO: Use actual encoder value when available
    #         min: -1e9 # TODO: Use actual encoder value when available
    #         is_controllable: true

            
    input_ports:
        speed:
            desc: "Simulated speed of the simulated motor"
            type: "float64"
           # type: "input_ports_struct"
            protocol: "pull"
            max_rate: 2000
            blocking_mode: "async"

    output_ports:
        voltage:
            desc: "Simulated voltage applied to the simulated motor"
            type: "float64"
           # type: "output_ports_struct"
            protocol: "push"
            max_rate: 2000
            blocking_mode: "async"

    properties:
        uri:       {default: "gmt://motor_dcs/motor_ctrl"}
        name:      {default: "motor_ctrl"}
        host:      {default: "127.0.0.1"}
        port:      {default: 30000}
        scan_rate: {default: 100}

    instance_configurations: ['motor_ctrl']
