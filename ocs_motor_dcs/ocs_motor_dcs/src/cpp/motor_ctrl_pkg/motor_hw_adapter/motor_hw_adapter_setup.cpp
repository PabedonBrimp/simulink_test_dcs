#include "motor_hw_adapter.h"
#include "motor_hw_adapter_msgpack.h"

using namespace gmt;

void MotorHwAdapter::create_config() {

    Setup* the_config = new Setup;
    config = the_config;

    setup_port = create_port(*the_config, "setup_port", "pull", url, "async", scan_rate, scan_rate);
    log_info("Setup port created: "+url);
}

void MotorHwAdapter::setup() {

    Setup::InputPortConf&  inputp_confs   = dynamic_cast<Setup*>(config)->input_ports;
    Setup::OutputPortConf& outputp_confs  = dynamic_cast<Setup*>(config)->output_ports;
    Setup::PropertyConf&   property_confs = dynamic_cast<Setup*>(config)->properties;

    log_info("port setup");

    // create input ports
    new_input_port(speed,                     "speed",                 inputp_confs.speed);

    // create output ports
    new_output_port(voltage,                  "voltage",               outputp_confs.voltage);
    new_output_port(heartbeat_out,            "heartbeat_out",         outputp_confs.heartbeat_out);

    // Create state variable ports  (current, goal, health)
    new_input_port(ops_state_sv.goal,         "ops_state_goal",        inputp_confs.ops_state_goal);
    new_output_port(ops_state_sv.value,       "ops_state_value",       outputp_confs.ops_state_value);

    // Create properties
    new_property(uri,                         "uri",                   property_confs.uri);
    new_property(name,                        "name",                  property_confs.name);
    new_property(host,                        "host",                  property_confs.host);
    new_property(port,                        "port",                  property_confs.port);
    new_property(scan_rate,                   "scan_rate",             property_confs.scan_rate);
    new_property(acl,                         "acl",                   property_confs.acl);

   // set_fieldbus_config_port(ecat_bus, "ecat_bus");

    // create data_object references

    // Add transport definition of port types related to state variables


}
