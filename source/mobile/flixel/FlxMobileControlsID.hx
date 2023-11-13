package mobile.flixel;
import flixel.system.macros.FlxMacroUtil;
/**
* A enum based off for handling mobile virtualpad buttons and hitbox hints.
* @author Karim Akra
*/
@:enum 
abstract FlxMobileControlsID(Int) from Int to Int
{
    public static var fromStringMap(default, null):Map<String, FlxMobileControlsID> = FlxMacroUtil.buildMap("mobile.flixel.FlxMobileControlsID");
	public static var toStringMap(default, null):Map<FlxMobileControlsID, String> = FlxMacroUtil.buildMap("mobile.flixel.FlxMobileControlsID", true);
    var A = 1;
    var B = 2;
    var C = 3;
    var UP = 4;
    var DOWN = 5;
    var LEFT = 6;
    var RIGHT = 7;
    var D = 8;
    var E = 9;
    var V = 10;
    var X = 11;
    var Y = 12;
    var Z = 13;
    var dpadLEFT2 = 16;
    var dpadUP2 = 14;
    var dpadRIGHT2 = 17;
    var dpadDOWN2 = 15;
    var hitboxUP = 16;
    var hitboxDOWN = 17;
    var hitboxLEFT = 18;
    var hitboxRIGHT = 19;
    var noteUP = 20;
    var noteDOWN = 21;
    var noteLEFT = 22;
    var noteRIGHT = 23;

    var NONE = -1;

    @:from
	public static inline function fromString(s:String)
	{
		s = s.toUpperCase();
		return fromStringMap.exists(s) ? fromStringMap.get(s) : NONE;
	}

	@:to
	public inline function toString():String
	{
		return toStringMap.get(this);
	}
}
