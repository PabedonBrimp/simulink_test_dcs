#ifndef _motor_ctrl_h_
#define _motor_ctrl_h_

#include "ocs_core_fwk.h"
#include "ocs_ctrl_fwk.h"
#include "../../include/motor_dcs_port_types.h"

class MotorCtrlSetup;

namespace gmt
{

class MotorCtrl : public BaseController
{
    public:
        MotorCtrl(
            const std::string& comp_uri,
            const std::string& comp_name,
            const std::string& comp_host,
            int comp_port,
            const std::string& comp_acl,
            float comp_scan_rate);

        virtual ~MotorCtrl();

        void setup() override;
        void step(bool setup_ok) override;

    protected:

        typedef MotorCtrlSetup Setup;

        virtual void create_config() override;

        // Create state variables

        // Input port declaration
        double                   speed;               // Simulated speed of the simulated motor

        // Output port declaration
        double                   voltage;             // Simulated voltage applied to the simulated motor

        // Define alarms for port and state_var health conditions

        // Configuration properties



};

} // namespace gmt

#endif   // _motor_ctrl_h_
