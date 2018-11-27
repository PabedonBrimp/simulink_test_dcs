
path          = require 'path'
_             = require 'lodash'

local_path    = process.env.GMT_LOCAL
global_path   = process.env.GMT_GLOBAL

[base_config] = require "#{global_path}/etc/webpack/webpack.base"
project_name  = "ocs"
module_name   = "motor_dcs"

lib_config =
    name:   "lib"
    entry:
        motor_ctrl_pkg:          "./motor_ctrl_pkg/motor_ctrl_pkg.coffee"
    output:
        filename:                "#{project_name}_#{module_name}_lib.js"
        path:                    path.resolve local_path, 'lib/js'
        libraryTarget:           'umd'
        library:                 module_name

_.extend lib_config,  base_config

app_config =
    name:   "app"
    entry:
        motor_ctrl_app:          "./motor_ctrl_pkg/motor_ctrl_app.coffee"
    output:
        filename:       "[name].js"
        path:           path.resolve local_path, 'bin'

_.extend app_config,  base_config

test_config =
    name:   "test"
    entry:
    output:
        filename:       "[name].js"
        path:           path.resolve local_path, "test/#{module_name}"

_.extend test_config, base_config

example_config =
    name:   "example"
    entry:
    output:
        filename:       "[name].js"
        path:           path.resolve local_path, "example/#{module_name}"

_.extend example_config, base_config

module.exports = [lib_config, app_config, test_config, example_config]

