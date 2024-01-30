package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

import flixel.text.FlxText;

//import haxe.ui.HaxeUIApp; // HaxeUI-Flixel be messin' me up.

class Hub extends FlxState
{
	override public function create()
	{
		super.create();
		
		bgColor = 0xc1c1c1ff;
		
		var hubMainText = new FlxText();
		hubMainText = new FlxText(0, 20, 500); // x, y, width
		hubMainText.text = "Example Hub";
		hubMainText.setFormat("assets/fonts/Windows Regular.ttf", 18, FlxColor.BLACK, CENTER);
		//myhubMainTextText.setBorderStyle(OUTLINE, FlxColor.RED, 1);
		add(hubMainText);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
	/*
	public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
        
    }*/
}
