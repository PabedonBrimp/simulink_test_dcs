
# Component   instance configuration file
# Ports should be setup per instance

module.exports =

    properties:
        uri: { name: 'uri', default_value: 'gmt://default/' , type: 'String', desc: 'Uri path for the component' }
        name: { name: 'name', default_value: 'void' , type: 'String', desc: 'Name the component' }
        host: { name: 'host', default_value: '127.0.0.1' , type: 'String', desc: 'Default host for deployment.' }
        port: { name: 'port', default_value: 8000 , type: 'Integer', desc: 'Default configuration port' }
        acl: { name: 'acl', default_value: 'PRIVATE' , type: 'String', desc: 'Access Control List. List of namespaces that can issue a command to the controller. TBC' }
        scan_rate: { name: 'scan_rate', default_value: 1000 , type: 'Float', desc: 'The scanning rate of the component loop in Hz. In each iteration of the loop the component must process its ports and health status. The estimation of the state variables, is defined by the state variable sampling rate and it may use an estimation model. The control of the state variable is defined by the state variable control rate. It must calculate the control output, if necessary with a control model. The scanning rate shall be always higher that the maximum of the sampling or control rate of any of its states variables' }

    state_vars:
        ops_state: { name: 'ops_state', default_value: 'OFF'  }
        sim_mode: { name: 'sim_mode', default_value: 'ON_LINE'  }
        control_mode: { name: 'control_mode', default_value: 'STANDALONE'  }

    input_ports:
        speed:               { name: 'speed',                 protocol: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 100,   nom_rate: 1     }
        ops_state_goal:      { name: 'ops_state_goal',        protocol: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }
        sim_mode_goal:       { name: 'sim_mode_goal',         protocol: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }
        control_mode_goal:   { name: 'control_mode_goal',     protocol: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }

    output_ports:
        voltage:             { name: 'voltage',               protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 100,   nom_rate: 1     }
        properties:          { name: 'properties',            protocol: '',      url: 'tcp://127.0.0.1:8000', blocking_mode: '',      max_rate: ,      nom_rate: 1     }
        heartbeat_out:       { name: 'heartbeat_out',         protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }
        ops_state_value:     { name: 'ops_state_value',       protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }
        sim_mode_value:      { name: 'sim_mode_value',        protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }
        control_mode_value:  { name: 'control_mode_value',    protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }



