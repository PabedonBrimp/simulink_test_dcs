#include "motor_hw_adapter.h"

using namespace gmt;

MotorHwAdapter::MotorHwAdapter(
        const std::string& comp_uri,
        const std::string& comp_name,
        const std::string& comp_host,
        int comp_port,
        const std::string& comp_acl,
        float comp_scan_rate)
    : HwAdapter(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate)
    
{

    log_info("creating controller");
}

MotorHwAdapter::~MotorHwAdapter() {
}
