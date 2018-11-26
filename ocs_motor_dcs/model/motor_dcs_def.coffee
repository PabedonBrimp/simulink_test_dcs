# Module motor_dcs definition

module.exports =
    elements:
        motor_ctrl_pkg:
            elements:
                motor_ctrl_super: { language: ['cpp','coffee'], build: 'obj', deploy: 'dist', codegen: true, active: true }
                motor_ctrl:    { language: ['cpp'],          build: 'obj', deploy: 'dist', codegen: true, active: true }
                motor_hw_adapter: { language: ['cpp'],          build: 'obj', deploy: 'dist', codegen: true, active: true }
                motor_ctrl_app:   { language: ['cpp'],          build: 'app', deploy: 'dist', codegen: true, active: true }


### motor_vis_pkg: ###
### elements: ###
### motor_global_panel:      { language: ['coffee'], build: 'obj', deploy: 'dist',    codegen: true, active: true} ###
