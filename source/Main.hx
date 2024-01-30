package;

import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.Sprite;
//import haxe.ui.Toolkit;

class Main extends Sprite
{
	public function new()
	{
		super();
		//Toolkit.init();
		//FlxG.autoPause = false;
		addChild(new FlxGame(0, 0, SplashState, 60, 60, true));
		// Width, Height, First State, Zoom, UFramerate, DFramerate, SkipSplash, Fullscreen
		     // https://youtu.be/kEXeCx2W18g?t=120
		     // https://api.haxeflixel.com/flixel/FlxGame.html
	}
}
