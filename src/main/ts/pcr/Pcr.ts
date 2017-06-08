import {Character} from "./Character";

export class Pcr {
    game: Phaser.Game;

    constructor(game: Phaser.Game) {
        this.game = game;
    }

    generate(pieces: CharacterPieces): Character {
        return new Character(pieces, this.game);
    }

    sampleFunction(x: number) { return x + 2; }
}

export interface CharacterPieces {
    head: string;
    leftArm: string;
    rightArm: string;
    torso: string;
    leftLeg: string;
    rightLeg: string;
}