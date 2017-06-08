import {CharacterPieces} from "./Pcr";
import {Sprite} from "./Sprite";

export class Character {
    pieces: CharacterPieces;
    sprite: Sprite;

    constructor(pieces: CharacterPieces, game: Phaser.Game) {
        this.pieces = pieces;
        this.sprite = new Sprite(game);
    }
}
