#!/usr/bin/coffee

msgpack = require 'msgpack-lite'
nn=require 'nanomsg'


host = '127.0.0.1'

send_config = (name, conf, url) ->

    #encode
    packed_conf = msgpack.encode (conf)

    #and send it to the port
    s = new nn.Socket ('push')
    s.connect url
    s.send packed_conf
    console.log 'Done!'

send_component_config = (name, conf_file, url) ->
    console.log 'Sending configuration for '+name+'...'
    conf =  require conf_file

    send_config name, conf, url

send_ethercat_config = (name, conf_file, url) ->
    console.log 'Sending ethercat configuration for '+name+'...'
    conf =  require conf_file

    send_config name, conf.ethercat_config, url

motor_configurables = [
    {
        name: 'motor_ctrl_super'
        url: 'tcp://' + host + ':29999'
        conf_file: '/home/cplubell/workspace/modules/ocs_motor_dcs/src/etc/conf/motor_ctrl_pkg/motor_ctrl_super/motor_ctrl_super_config.coffee'
        #conf_file: './conf/motor_ctrl_pkg/motor_ctrl_super/motor_ctrl_super_config.coffee'
    }

    {
        name: 'motor_ctrl'
        url: 'tcp://' + host + ':30000'
        conf_file: '/home/cplubell/workspace/modules/ocs_motor_dcs/src/etc/conf/motor_ctrl_pkg/motor_ctrl/motor_ctrl_config.coffee'
    }

    {
       name: 'motor_hw1_adapter'
       url: 'tcp://' + host + ':29998'
       conf_file: '/home/cplubell/workspace/modules/ocs_motor_dcs/src/etc/conf/motor_ctrl_pkg/motor_hw_adapter/motor_hw1_adapter_config.coffee'
    }
]

send_component_config component.name, component.conf_file, component.url for component in motor_configurables
#send_ethercat_config 'HW Adapter Ethercat Bus', './ethercat_config.coffee', 'tcp://127.0.0.1:8000'