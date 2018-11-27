#include "motor_ctrl_super.h"

using namespace std;
using namespace gmt;

void run() {
    try {
        debug("motor_ctrl_super application starts","MotorCtrlSuper");

        // create instances
        MotorCtrlSuper motor_ctrl_super("gmt://motor_dcs/motor_ctrl_super/motor_ctrl_super", "motor_ctrl_super", "127.0.0.1", 29999, "PRIVATE", 100);

        // start instances
        motor_ctrl_super.start();

        // wait until components finish
        motor_ctrl_super.wait();
    }
    catch(std::runtime_error& e) { error(e.what(),"MotorCtrlSuper");            }
    catch(std::exception& e)     { error(e.what(),"MotorCtrlSuper");            }
    catch(...)                   { error("unknown exception","MotorCtrlSuper"); }
}

int main() {
    run();
    return(0);
}
