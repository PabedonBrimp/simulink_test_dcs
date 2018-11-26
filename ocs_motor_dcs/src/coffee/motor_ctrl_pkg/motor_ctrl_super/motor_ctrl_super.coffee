
class MotorCtrlSuper
    constructor: (@name, @rate) ->
        super @name, @rate

    setup: () ->
            @new_input_port "heartbeat_in"

            @new_output_port "heartbeat_out"

    step: () ->
        # Add your code here

module.exports = { MotorCtrlSuper }

