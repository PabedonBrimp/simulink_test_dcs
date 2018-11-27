
{CLIApplication, Component} = require 'ocs_core_fwk'
MotorCtrlSuper = require './motor_ctrl_super'

conf_dir = "#{process.env['GMT_LOCAL']}/test/"
app      = new CLIApplication {name: 'motor_ctrl_super_app', debug: false}

app.setup()

motor_ctrl_super = new  app, {cfile: "#{conf_dir}/motor_ctrl_super_config"}

app.start()

