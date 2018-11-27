#ifndef _output_ports_struct_h_
#define _output_ports_struct_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct output_ports_struct {
    double                   speed;               // Simulated speed of the simulated motor
    MSGPACK_DEFINE_MAP(speed)
};


#endif // _output_ports_struct_h_
