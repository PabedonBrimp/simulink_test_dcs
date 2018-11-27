#ifndef _input_ports_struct_h_
#define _input_ports_struct_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct input_ports_struct {
    double                   voltage;             // Simulated voltage applied to simulated motor
    MSGPACK_DEFINE_MAP(voltage)
};


#endif // _input_ports_struct_h_
