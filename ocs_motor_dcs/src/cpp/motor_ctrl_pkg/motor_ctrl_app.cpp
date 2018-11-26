#include "./motor_ctrl_super/motor_ctrl_super.h"
#include "./motor_ctrl/motor_ctrl.h"
#include "./motor_hw_adapter/motor_hw_adapter.h"

using namespace std;
using namespace gmt;

void run() {
    try {
        debug("motor_ctrl_pkg application starts","MotorCtrlPkg");

        // create motor_ctrl_super instances
        MotorCtrlSuper motor_ctrl_super("gmt://motor_dcs/motor_ctrl_super/motor_ctrl_super", "motor_ctrl_super", "127.0.0.1", 29999, "PRIVATE", 100);

        // create motor_ctrl instances
        MotorCtrl motor_ctrl("gmt://motor_dcs/motor_ctrl/motor_ctrl", "motor_ctrl", "127.0.0.1", 30000, "PRIVATE", 100);

        // create motor_hw_adapter instances
        MotorHwAdapter motor_hw1_adapter("gmt://motor_dcs/motor_hw_adapter/motor_hw1_adapter", "motor_hw1_adapter", "127.0.0.1", 29998, "PRIVATE", 100);

        // create motor_ctrl_app instances


        // start motor_ctrl_super instances
        motor_ctrl_super.start();

        // start motor_ctrl instances
        motor_ctrl.start();

        // start motor_hw_adapter instances
        motor_hw1_adapter.start();

        // start motor_ctrl_app instances


        // wait until components finish
        motor_ctrl_super.wait();
        motor_ctrl.wait();
        motor_hw1_adapter.wait();
    }
    catch(std::runtime_error& e) { error(e.what(),"MotorCtrlPkg");            }
    catch(std::exception& e)     { error(e.what(),"MotorCtrlPkg");            }
    catch(...)                   { error("unknown exception","MotorCtrlPkg"); }
}

int main() {
    run();
    return(0);
}
