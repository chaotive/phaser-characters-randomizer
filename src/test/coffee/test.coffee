global.expect = require('chai').expect
global.Phaser = require('phaser-mock')
global.PCR = require '../../../target/temp/js/pcr/Pcr'

require './pcr/pcr.spec.coffee'
