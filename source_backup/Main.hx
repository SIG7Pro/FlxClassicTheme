package;

import flixel.FlxGame;
import openfl.display.Sprite;
import haxe.ui.Toolkit;

class Main extends Sprite
{
	public function new()
	{
		super();
		Toolkit.init();
		addChild(new FlxGame(0, 0, Hub));
	}
}
