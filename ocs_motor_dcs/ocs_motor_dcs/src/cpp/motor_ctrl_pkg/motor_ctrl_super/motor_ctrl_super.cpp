#include "motor_ctrl_super.h"

using namespace gmt;

MotorCtrlSuper::MotorCtrlSuper(
        const std::string& comp_uri,
        const std::string& comp_name,
        const std::string& comp_host,
        int comp_port,
        const std::string& comp_acl,
        float comp_scan_rate)
    : BaseController(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate)
    
    
    
{

    log_info("creating controller");
}

MotorCtrlSuper::~MotorCtrlSuper() {
}
