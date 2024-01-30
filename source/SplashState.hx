package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

/*

 * Original SplashState.hx by Ninjamuffin99, edited a little bit to work in current HF as the original is 7 years old.
 * I *might* not end up using this, who knows?
  
 */
class SplashState extends FlxState 
{
	private var _times:Array<Float>;
	private var _curPart:Int = 0;
	private var _functions:Array<Void->Void>;
	
	var SliceWidth = 160;
			var partA = new FlxSprite();
					var partB = new FlxSprite();
							var partC = new FlxSprite();
									var partD = new FlxSprite();
											var initText = new FlxText();
	
	override public function create():Void 
	{
		FlxG.fixedTimestep = false;
		
		//These are when the flixel notes/sounds play, you probably shouldn't change these if you want the functions to sync up properly
		_times = [0.041, 0.184, 0.334, 0.495, 0.636];
		
		//An array of functions to call after each time thing has passed, feel free to rename to whatever
		_functions = [addText1, addText2, addText3, addText4, addText5];
		
		for (time in _times)
		{
			new FlxTimer().start(time, timerCallback);
		}
		
		// wheeee

		partA.loadGraphic("assets/images/splash/PartA.png");
		partA.x = SliceWidth * 0;
		partA.screenCenter(Y);
                partA.alpha = 0.1;
		

		partB.loadGraphic("assets/images/splash/PartB.png");
		partB.x = SliceWidth * 1;
		partB.screenCenter(Y);
		partB.alpha = 0.1;

		

		partC.loadGraphic("assets/images/splash/PartC.png");
		partC.x = SliceWidth * 2;
		partC.screenCenter(Y);
		partC.alpha = 0.1;

		

		partD.loadGraphic("assets/images/splash/PartD.png");
		partD.x = SliceWidth * 3;
		partD.screenCenter(Y);
		partD.alpha = 0.1;
		

		initText = new FlxText(0, 20, 500); // x, y, width
		initText.text = "Initialize";
		initText.setFormat("assets/fonts/Windows Regular.ttf", 18, FlxColor.BLACK, CENTER);
		initText.alpha = 0.1;
		
		add(partA);
		add(partB);
		add(partC);
		add(partD);
		add(initText);


		
		// If anyone were to resize the game, then the sprites would have to be resized.
		// You could either resize the images or use a math problem.
		// Since all of the slices are 1/4th wide the OG screen, a good equation would be like:
		// Scaling: (Screensize) / 4 
		// Positioning: ((Screensize) / 4) x [split number -1]
		// I'm not sure if this'd be accurate enough to work, but who knows?
		
		//put the included flixel.mp3 into your assests folder in your project
		FlxG.sound.play("assets/sounds/flixel.mp3", 1, false, null, true);
		super.create();
	}
	
	override public function update(elapsed:Float):Void 
	{
		//Thing to skip the splash screen
		//Comment this out if you want it unskippable
		if (FlxG.keys.justPressed.SPACE || FlxG.mouse.justPressed)
		{
			finishTween();
		}
		
		super.update(elapsed);
	}
	
	private function timerCallback(Timer:FlxTimer):Void
	{
		_functions[_curPart]();
		_curPart++;
		
		if (_curPart == 5)
		{
			//What happens when the final sound/timer time passes
			//change parameters to whatever you feel like
			FlxG.camera.fade(FlxColor.BLACK, 3.25, false, finishTween);
		}
	}
	
	private function addText1():Void
	{
		//stuff that happens
		//		add(partA);
		partA.alpha = 1;
	}
	
	private function addText2():Void
	{
		//stuff that happens
		//		add(partB);
		partB.alpha = 1;
	}
	
	private function addText3():Void
	{
		//stuff that happens
		//		add(partC);
		partC.alpha = 1;
	}
	
	private function addText4():Void
	{
		//stuff that happens
		//		add(partD);
		partD.alpha = 1;
	}
	
	private function addText5():Void
	{
		//stuff that happens
		//		add(initText);
		initText.alpha = 1;
	}
	
	private function finishTween():Void
	{
		//Switches to PlayState when the fadeout tween(in the timerCallback function) is finished
		FlxG.switchState(new PlayState()); //https://github.com/ninjamuffin99/HFSplashTemplate
	}
	
}
