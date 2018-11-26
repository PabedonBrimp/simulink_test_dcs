#ifndef _motor_ctrl_super_h_
#define _motor_ctrl_super_h_

#include "ocs_core_fwk.h"
#include "ocs_ctrl_fwk.h"
#include "../../include/motor_dcs_port_types.h"

class MotorCtrlSuperSetup;

namespace gmt
{

class MotorCtrlSuper : public BaseController
{
    public:
        MotorCtrlSuper(
            const std::string& comp_uri,
            const std::string& comp_name,
            const std::string& comp_host,
            int comp_port,
            const std::string& comp_acl,
            float comp_scan_rate);

        virtual ~MotorCtrlSuper();

        void setup() override;
        void step(bool setup_ok) override;

    protected:

        typedef MotorCtrlSuperSetup Setup;

        virtual void create_config() override;

        // Create state variables

        // Input port declaration
        HeartBeatEvent           heartbeat_in;        // Heart beat from supervisees

        // Output port declaration

        // Define alarms for port and state_var health conditions

        // Configuration properties



};

} // namespace gmt

#endif   // _motor_ctrl_super_h_
