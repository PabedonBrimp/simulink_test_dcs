#ifndef _motor_hw_adapter_h_
#define _motor_hw_adapter_h_

#include "ocs_core_fwk.h"
#include "ocs_io_fwk.h"
#include "../../include/motor_dcs_port_types.h"

class MotorHwAdapterSetup;

namespace gmt
{

class MotorHwAdapter : public HwAdapter
{
    public:
        MotorHwAdapter(
            const std::string& comp_uri,
            const std::string& comp_name,
            const std::string& comp_host,
            int comp_port,
            const std::string& comp_acl,
            float comp_scan_rate);

        virtual ~MotorHwAdapter();

        void setup() override;
        void step(bool setup_ok) override;

    protected:

        typedef MotorHwAdapterSetup Setup;

        virtual void create_config() override;

        // Create state variables

        // Input port declaration
        input_ports_struct       speed;               // Speed of simulated motor

        // Output port declaration
        output_ports_struct      voltage;             // Simulated voltage applied to simulated motor

        // Define alarms for port and state_var health conditions

        // Configuration properties



};

} // namespace gmt

#endif   // _motor_hw_adapter_h_
