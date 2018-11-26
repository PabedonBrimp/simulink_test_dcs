#include "motor_ctrl.h"

using namespace std;
using namespace gmt;

void run() {
    try {
        debug("motor_ctrl application starts","MotorCtrl");

        // create instances
        MotorCtrl motor_ctrl("gmt://motor_dcs/motor_ctrl/motor_ctrl", "motor_ctrl", "127.0.0.1", 30000, "PRIVATE", 100);

        // start instances
        motor_ctrl.start();

        // wait until components finish
        motor_ctrl.wait();
    }
    catch(std::runtime_error& e) { error(e.what(),"MotorCtrl");            }
    catch(std::exception& e)     { error(e.what(),"MotorCtrl");            }
    catch(...)                   { error("unknown exception","MotorCtrl"); }
}

int main() {
    run();
    return(0);
}
