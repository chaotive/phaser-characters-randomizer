describe 'PCR', ->

  it 'passes sample test', ->

    game = new Phaser.Game()
    pcr = new PCR.Pcr(game)
    pcr.sampleFunction(2).should.equal 4
