package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;


class Hub extends FlxState
{
	override public function create()
	{
		super.create();
		
		var sprite = new FlxSprite();
		sprite.makeGraphic(FlxG.width, FlxG.height, FlxColor.RED);
		sprite.screenCenter();
		add(sprite);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
