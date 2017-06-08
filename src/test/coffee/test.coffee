should = require('chai').should()

global.Phaser = require('phaser-mock')
#require '/lib/main/chaotive.fw-0.5.0'

#global.SOMEGAME = require '../../../target/js/some-game'
#require './SOME-GAME/some.spec.coffee'

global.PCR = require '../../../target/js/pcr'
#global.PCR = require '../../../src/main/ts/pcr/Pcr'
require './pcr/pcr.spec.coffee'
