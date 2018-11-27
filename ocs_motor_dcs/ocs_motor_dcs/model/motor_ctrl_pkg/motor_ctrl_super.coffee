
# Supervisor   'motor_ctrl_super',
#     info:    'motor Control System Supervisor'
#     extends: ['BaseController']

Supervisor    'motor_ctrl_super',
    info:     'motor Control Supervisor'
    desc:     'This provides supervision of the motor controllers'
    extends:  ['BaseController']
    abstract: false
    uses:     ["ocs_core_fwk", "ocs_ctrl_fwk"]

    # Module management attributes
    instances:     1
    c_factor:      1
    r_factor:      1
    procurement:   "swc"
    phase:         "design"
    resource:      "labor"
    assignee:      "person1"
    fte_perc:      "100"
    status:        "NON_STARTED"
    activity_type: "activity"
    release:       [1]
    stage:         "1"

    input_ports:
        # heartbeat_in should be in super class (BaseSupervisor)
        heartbeat_in:
            desc:           'Heart beat from supervisees'
            type:           'HeartBeatEvent'
            protocol:       'pull'
            max_rate:       100
            blocking_mode:  'async'

    properties:
        uri:          {default: "gmt://motor_dcs/motor_ctrl_super"}
        name:         {default: "motor_ctrl_super"}
        host:         {default: "127.0.0.1"}
        port:         {default: 29999}
        scan_rate:    {default: 100}

    instance_configurations: ['motor_ctrl_super']
