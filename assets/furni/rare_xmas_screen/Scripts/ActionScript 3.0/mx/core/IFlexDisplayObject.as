//IFlexDisplayObject
package mx.core 
{
    import flash.accessibility.*;
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    
    public interface IFlexDisplayObject extends flash.display.IBitmapDrawable, flash.events.IEventDispatcher
    {
        function get visible():Boolean;

        function get rotation():Number;

        function localToGlobal(arg1:flash.geom.Point):flash.geom.Point;

        function get name():String;

        function set width(arg1:Number):void;

        function get measuredHeight():Number;

        function get blendMode():String;

        function get scale9Grid():flash.geom.Rectangle;

        function set name(arg1:String):void;

        function set scaleX(arg1:Number):void;

        function set scaleY(arg1:Number):void;

        function get measuredWidth():Number;

        function get accessibilityProperties():flash.accessibility.AccessibilityProperties;

        function set scrollRect(arg1:flash.geom.Rectangle):void;

        function get cacheAsBitmap():Boolean;

        function globalToLocal(arg1:flash.geom.Point):flash.geom.Point;

        function get height():Number;

        function set blendMode(arg1:String):void;

        function get parent():flash.display.DisplayObjectContainer;

        function getBounds(arg1:flash.display.DisplayObject):flash.geom.Rectangle;

        function get opaqueBackground():Object;

        function set scale9Grid(arg1:flash.geom.Rectangle):void;

        function setActualSize(arg1:Number, arg2:Number):void;

        function set alpha(arg1:Number):void;

        function set accessibilityProperties(arg1:flash.accessibility.AccessibilityProperties):void;

        function get width():Number;

        function hitTestPoint(arg1:Number, arg2:Number, arg3:Boolean=false):Boolean;

        function set cacheAsBitmap(arg1:Boolean):void;

        function get scaleX():Number;

        function get scaleY():Number;

        function get scrollRect():flash.geom.Rectangle;

        function get mouseX():Number;

        function get mouseY():Number;

        function set height(arg1:Number):void;

        function set mask(arg1:flash.display.DisplayObject):void;

        function getRect(arg1:flash.display.DisplayObject):flash.geom.Rectangle;

        function get alpha():Number;

        function set transform(arg1:flash.geom.Transform):void;

        function move(arg1:Number, arg2:Number):void;

        function get loaderInfo():flash.display.LoaderInfo;

        function get root():flash.display.DisplayObject;

        function hitTestObject(arg1:flash.display.DisplayObject):Boolean;

        function set opaqueBackground(arg1:Object):void;

        function set visible(arg1:Boolean):void;

        function get mask():flash.display.DisplayObject;

        function set x(arg1:Number):void;

        function set y(arg1:Number):void;

        function get transform():flash.geom.Transform;

        function set filters(arg1:Array):void;

        function get x():Number;

        function get y():Number;

        function get filters():Array;

        function set rotation(arg1:Number):void;

        function get stage():flash.display.Stage;
    }
}


