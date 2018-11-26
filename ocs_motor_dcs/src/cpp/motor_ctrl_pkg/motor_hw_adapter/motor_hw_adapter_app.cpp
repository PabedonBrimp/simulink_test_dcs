#include "motor_hw_adapter.h"

using namespace std;
using namespace gmt;

void run() {
    try {
        debug("motor_hw_adapter application starts","MotorHwAdapter");

        // create instances
        MotorHwAdapter motor_hw1_adapter("gmt://motor_dcs/motor_hw_adapter/motor_hw1_adapter", "motor_hw1_adapter", "127.0.0.1", 29998, "PRIVATE", 100);

        // start instances
        motor_hw1_adapter.start();

        // wait until components finish
        motor_hw1_adapter.wait();
    }
    catch(std::runtime_error& e) { error(e.what(),"MotorHwAdapter");            }
    catch(std::exception& e)     { error(e.what(),"MotorHwAdapter");            }
    catch(...)                   { error("unknown exception","MotorHwAdapter"); }
}

int main() {
    run();
    return(0);
}
