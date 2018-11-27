# Module motor_dcs specification

DCS 'motor_dcs',

  info: 'motor Device Control System'
  desc: require './motor_dcs.rst'

  uses: [
      "ocs_core_fwk"
      "ocs_ctrl_fwk"
  ]

  types: [
      "input_ports_struct"
      "output_ports_struct"
  ]

  c_factor: 1
  r_factor: 1
  procurement: "GMTO"
  phase: "inception"
  resource: "labor"
  assignee: "cplubell"
  fte_perc: "100"
  status: "STARTED"
  activity_type: "activity"
  release: [1]

  connectors: [
    {
      id: 30003,
      from: { element: "motor_ctrl", port: "voltage" },
      to: { element: "motor_hw1_adapter", port: "voltage" },
      max_latency: 0.5,
      nom_rate: 100,
      on_fault: "",
      conversion: ""
    }
    {
      id: 30004
      to: { element: "motor_ctrl", port: "speed" },
      from: { element: "motor_hw1_adapter", port: "speed" },
      max_latency: 0.5,
      nom_rate: 100,
      on_fault: "",
      conversion: ""
    }

    {
        id: 30014,
        from: { element: "motor_ctrl", port: "heartbeat_out" },
        to: { element: "motor_ctrl_super", port: "heartbeat_in" },
        max_latency: 0.5,
        nom_rate: 100,
        on_fault: "",
        conversion: "",
        bus: ""
    }
    {
        id: 30015,
        from: { element: "motor_hw1_adapter", port: "heartbeat_out" },
        to: { element: "motor_ctrl_super", port: "heartbeat_in" },
        max_latency: 0.5,
        nom_rate: 100,
        on_fault: "",
        conversion: "",
        bus: ""
    }
  ]

  # connectors: [
    #   { id: 30010, to:   {element: "motor_hw1_adapter", port: "voltage"}, from: {element: "*", port: "*"}, max_latency: 0.5,          nom_rate: 1000,   on_fault: "", conversion: "", bus: "" }
    #   { id: 30011, to:   {element: "*", port: "*"}, from: {element: "motor_ctrl", port: "voltage"},  max_latency: 0.5,   nom_rate: 1000, on_fault: "", conversion: "", bus: "" }
    #   { id: 30012, from: {element: "motor_hw1_adapter", port: "speed"}, to: {element: "*", port: "*"}, max_latency: 0.5,             nom_rate: 1000, on_fault: "", conversion: "", bus: "" }
    #   { id: 30013, from: {element: "*", port: "*"}, to: {element: "motor_ctrl", port: "speed"}, max_latency: 0.5,     nom_rate: 1000, on_fault: "", conversion: "", bus: "" }
    #   { id: 30014, from: {element: "motor_ctrl", port: "heartbeat_out"}, to: {element: "motor_ctrl_super", port: "heartbeat_in"}, max_latency: 0.5,     nom_rate: 100, on_fault: "", conversion: "", bus: "" }
    #   { id: 30015, from: {element: "motor_hw1_adapter", port: "heartbeat_out"}, to: {element: "motor_ctrl_super", port: "heartbeat_in"}, max_latency: 0.5,     nom_rate: 100, on_fault: "", conversion: "", bus: "" }
    # ]
      # id: 30002
      #   from: { element: "motor_ctrl_super", port: "heartbeat_out" }
      #   to: { element: "motor_dcs_super", port: "heartbeat_in" }
      #   max_latency: 0.5
      #   nom_rate: 100
      #   on_fault: ""
      #   conversion: ""

        ### id: 8101
        from:        { element: "motor_vis_super",  port: "heartbeat_out"}
        to:          { element: "motor_dcs_super", port: "heartbeat_in"}
        max_latency: 0.5
        nom_rate:    100
        on_fault:    ""
        conversion:  "" ###

      # id: 30003
      #   from: { element: "motor_ctrl", port: "voltage" }
      #   to: { element: "motor_hw1_adapter", port: "voltage"}
      #   max_latency: 0.5
      #   nom_rate: 100
      #   on_fault: ""
      #   conversion: ""

      # id: 30004
      #   to: { element: "motor_ctrl", port: "speed" }
      #   from: { element: "motor_hw1_adapter", port: "speed"} 
      #   max_latency: 0.5
      #   nom_rate: 100
      #   on_fault: ""
      #   conversion: ""


    
      # TODO: Need to handle communication in hardware adapter C++ code
    #   { id: 8109, to:   {element: "motor_hw1_adapter", port: "ecat_bus"}, from: {element: "*", port: "*"}, max_latency: 0.5,          nom_rate: 100,   on_fault: "", conversion: "", bus: "" }
    #   { id: 8110, to:   {element: "motor_hw1_adapter", port: "ops_state_goal"}, from: {element: "*", port: "*"},  max_latency: 0.5,   nom_rate: 1, on_fault: "", conversion: "", bus: "" }
    #   { id: 8111, from: {element: "motor_hw1_adapter", port: "sdo_out"}, to: {element: "*", port: "*"}, max_latency: 0.5,             nom_rate: 100, on_fault: "", conversion: "", bus: "" }
    #   { id: 8112, from: {element: "motor_hw1_adapter", port: "ops_state_value"}, to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }

    #   { id: 8113, to:   {element: "motor_az_ctrl",   port: "ops_state_goal"}, from: {element: "*", port: "*"}, max_latency: 0.5,    nom_rate: 1, on_fault: "", conversion: "", bus: "" }
    #   { id: 8114, to:   {element: "motor_az_ctrl",   port: "sim_mode_goal"}, from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
    #   { id: 8115, to:   {element: "motor_az_ctrl",   port: "control_mode_goal"}, from: {element: "*", port: "*"}, max_latency: 0.5, nom_rate: 1, on_fault: "", conversion: "", bus: "" }

      # { id: 8116, from: {element: "motor_az_ctrl",   port: "ops_state_value"}, to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
      # { id: 8117, from: {element: "motor_az_ctrl",   port: "sim_mode_value"}, to: {element: "*", port: "*"}, max_latency: 0.5,      nom_rate: 1, on_fault: "", conversion: "", bus: "" }
      # { id: 8117, from: {element: "motor_az_ctrl",   port: "control_mode_value"}, to: {element: "*", port: "*"}, max_latency: 0.5,  nom_rate: 1, on_fault: "", conversion: "", bus: "" }

      # put other connectors here
  # ]

#Package 'motor_vis_pkg',
#    info: 'motor Visualization Package'
#    desc: 'motor Visualization Package'
