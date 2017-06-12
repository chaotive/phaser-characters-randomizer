describe 'PCR', ->
  game = new Phaser.Game()
  pcr = new PCR.Pcr(game)

  it 'passes sample test', ->
    expect(pcr.sampleFunction(2)).to.equal 4

  it 'generates a character', ->
    pieces =
      head: "head1"
      leftArm: "leftArm1"
      rightArm: "rightArm1"
      torso: "torso1"
      leftLeg: "leftLeg1"
      rightLeg: "rightLeg1"

    char = pcr.generate(pieces)
    expect(char).to.be.an.instanceof PCR.Character
