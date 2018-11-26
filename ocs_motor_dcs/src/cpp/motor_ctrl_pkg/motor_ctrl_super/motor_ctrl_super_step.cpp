#include "motor_ctrl_super.h"

using namespace gmt;

void MotorCtrlSuper::step(bool setup_ok) {
    if(setup_ok) {                     // this will be executed only if port setup has been received
        if (is_step_rate(100)) {      // this will be executed every 1000 steps
            log_info("step  = " + std::to_string(step_counter));
        }
    }
}
