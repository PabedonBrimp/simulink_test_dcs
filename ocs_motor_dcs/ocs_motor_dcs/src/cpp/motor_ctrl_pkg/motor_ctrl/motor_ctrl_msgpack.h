#ifndef _motor_ctrl_msgpack_h_
#define _motor_ctrl_msgpack_h_

#include <msgpack.hpp>
#include "ocs_core_fwk.h"
#include "ocs_ctrl_fwk.h"
#include "../../include/motor_dcs_port_types.h"

struct MotorCtrlSetup : public  BaseControllerSetup {

    struct PropertyConf : public  BaseControllerSetup::PropertyConf {
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, acl)
    };

    struct StateVarConf : public  BaseControllerSetup::StateVarConf {
        MSGPACK_DEFINE_MAP(ops_state, sim_mode, control_mode)
    };

    struct InputPortConf : public BaseControllerSetup::InputPortConf {
        PortDef<double>                speed;
        MSGPACK_DEFINE_MAP(speed, ops_state_goal, sim_mode_goal, control_mode_goal)
    };

    struct OutputPortConf : public BaseControllerSetup::OutputPortConf {
        PortDef<double>                voltage;
        MSGPACK_DEFINE_MAP(voltage, heartbeat_out, ops_state_value, sim_mode_value, control_mode_value)
    };

    PropertyConf     properties;
    StateVarConf     state_vars;
    InputPortConf    input_ports;
    OutputPortConf   output_ports;

    MSGPACK_DEFINE_MAP(properties, state_vars, input_ports, output_ports)
};

#endif // _motor_ctrl_msgpack_h_
