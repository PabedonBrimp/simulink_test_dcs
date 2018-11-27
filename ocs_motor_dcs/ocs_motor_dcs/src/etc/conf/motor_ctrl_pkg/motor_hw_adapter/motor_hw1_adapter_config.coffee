
# Component  motor_hw1_adapter instance configuration file
# Ports should be setup per instance

module.exports =

    properties:
        uri: { name: 'uri', default_value: 'gmt://motor_dcs/motor_hw_adapter/motor_hw1_adapter' , type: 'String', desc: 'Uri path for the component' }
        name: { name: 'name', default_value: 'motor_hw_adapter' , type: 'String', desc: 'Name the component' }
        host: { name: 'host', default_value: '127.0.0.1' , type: 'String', desc: 'Default host for deployment.' }
        port: { name: 'port', default_value: 29999 , type: 'Integer', desc: 'Default configuration port' }
        scan_rate: { name: 'scan_rate', default_value: 100 , type: 'Float', desc: 'The scanning rate of the component loop in Hz. In each iteration of the loop the component must process its ports and health status. The estimation of the state variables, is defined by the state variable sampling rate and it may use an estimation model. The control of the state variable is defined by the state variable control rate. It must calculate the control output, if necessary with a control model. The scanning rate shall be always higher that the maximum of the sampling or control rate of any of its states variables' }
        acl: { name: 'acl', default_value: 'PRIVATE' , type: 'String', desc: 'Access Control List. List of namespaces that can issue a command to the controller. TBC' }

    state_vars:
        ops_state: { name: 'ops_state', default_value: 'OFF'  }

    input_ports:
        speed:               { name: 'speed',                 protocol: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1000,  nom_rate: 1     }
        ops_state_goal:      { name: 'ops_state_goal',        protocol: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }

    output_ports:
        voltage:             { name: 'voltage',               protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1000,  nom_rate: 1     }
        heartbeat_out:       { name: 'heartbeat_out',         protocol: 'push',  url: 'tcp://127.0.0.1:30015', blocking_mode: 'async', max_rate: 1,     nom_rate: 100   }
        ops_state_value:     { name: 'ops_state_value',       protocol: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1     }



