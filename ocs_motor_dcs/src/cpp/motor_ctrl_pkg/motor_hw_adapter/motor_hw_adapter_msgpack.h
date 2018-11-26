#ifndef _motor_hw_adapter_msgpack_h_
#define _motor_hw_adapter_msgpack_h_

#include <msgpack.hpp>
#include "ocs_core_fwk.h"
#include "ocs_io_fwk.h"
#include "../../include/motor_dcs_port_types.h"

struct MotorHwAdapterSetup : public  HwAdapterSetup {

    struct PropertyConf : public  HwAdapterSetup::PropertyConf {
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, acl)
    };

    struct StateVarConf : public  HwAdapterSetup::StateVarConf {
        MSGPACK_DEFINE_MAP(ops_state)
    };

    struct InputPortConf : public HwAdapterSetup::InputPortConf {
        PortDef<input_ports_struct>    speed;
        MSGPACK_DEFINE_MAP(speed, ops_state_goal)
    };

    struct OutputPortConf : public HwAdapterSetup::OutputPortConf {
        PortDef<output_ports_struct>   voltage;
        MSGPACK_DEFINE_MAP(voltage, heartbeat_out, ops_state_value)
    };

    PropertyConf     properties;
    StateVarConf     state_vars;
    InputPortConf    input_ports;
    OutputPortConf   output_ports;

    MSGPACK_DEFINE_MAP(properties, state_vars, input_ports, output_ports)
};

#endif // _motor_hw_adapter_msgpack_h_
