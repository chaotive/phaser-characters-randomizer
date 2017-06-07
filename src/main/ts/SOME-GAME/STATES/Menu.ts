import {Util} from "../GAME/Util";
import Pcr from "../../Pcr/Generator";
import Generator = Pcr.Generator;

export class Menu extends Phaser.State {
    startButton: Phaser.Sprite;

    preload() {
        Util.preload(this.game);
    }

    create() {
        this.game.add.sprite(0, 0, 'bg1');
        this.startButton = this.game.add.sprite(230, 90, 'startbutton');
        this.startButton.inputEnabled = true;
        this.startButton.events.onInputDown.add(this.startAction,this);

        Generator.generate()
    }

    startAction() { // action binded to startButton
        this.game.state.start('GameOver');
    }

}

