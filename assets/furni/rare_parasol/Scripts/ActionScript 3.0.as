//ActionScript 3.0
//  mx
//    core
//      BitmapAsset
package mx.core 
{
    import flash.display.*;
    
    use namespace mx_internal;
    
    public class BitmapAsset extends mx.core.FlexBitmap implements mx.core.IFlexAsset, mx.core.IFlexDisplayObject
    {
        public function BitmapAsset(arg1:flash.display.BitmapData=null, arg2:String="auto", arg3:Boolean=false)
        {
            super(arg1, arg2, arg3);
            return;
        }

        public function get measuredWidth():Number
        {
            if (bitmapData) 
            {
                return bitmapData.width;
            }
            return 0;
        }

        public function get measuredHeight():Number
        {
            if (bitmapData) 
            {
                return bitmapData.height;
            }
            return 0;
        }

        public function setActualSize(arg1:Number, arg2:Number):void
        {
            width = arg1;
            height = arg2;
            return;
        }

        public function move(arg1:Number, arg2:Number):void
        {
            this.x = arg1;
            this.y = arg2;
            return;
        }

        
        {
            mx_internal::VERSION = "3.0.0.0";
        }

        mx_internal static const VERSION:String="3.0.0.0";
    }
}


//      ByteArrayAsset
package mx.core 
{
    import flash.utils.*;
    
    use namespace mx_internal;
    
    public class ByteArrayAsset extends flash.utils.ByteArray implements mx.core.IFlexAsset
    {
        public function ByteArrayAsset()
        {
            super();
            return;
        }

        
        {
            mx_internal::VERSION = "3.0.0.0";
        }

        mx_internal static const VERSION:String="3.0.0.0";
    }
}


//      FlexBitmap
package mx.core 
{
    import flash.display.*;
    import mx.utils.*;
    
    use namespace mx_internal;
    
    public class FlexBitmap extends flash.display.Bitmap
    {
        public function FlexBitmap(arg1:flash.display.BitmapData=null, arg2:String="auto", arg3:Boolean=false)
        {
            var bitmapData:flash.display.BitmapData=null;
            var pixelSnapping:String="auto";
            var smoothing:Boolean=false;

            var loc1:*;
            bitmapData = arg1;
            pixelSnapping = arg2;
            smoothing = arg3;
            super(bitmapData, pixelSnapping, smoothing);
            try 
            {
                name = mx.utils.NameUtil.createUniqueName(this);
            }
            catch (e:Error)
            {
            };
            return;
        }

        public override function toString():String
        {
            return mx.utils.NameUtil.displayObjectToString(this);
        }

        
        {
            mx_internal::VERSION = "3.0.0.0";
        }

        mx_internal static const VERSION:String="3.0.0.0";
    }
}


//      IFlexAsset
package mx.core 
{
    public interface IFlexAsset
    {
    }
}


//      IFlexDisplayObject
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


//      IRepeaterClient
package mx.core 
{
    public interface IRepeaterClient
    {
        function get instanceIndices():Array;

        function set instanceIndices(arg1:Array):void;

        function get isDocument():Boolean;

        function set repeaters(arg1:Array):void;

        function initializeRepeaterArrays(arg1:mx.core.IRepeaterClient):void;

        function get repeaters():Array;

        function set repeaterIndices(arg1:Array):void;

        function get repeaterIndices():Array;
    }
}


//      mx_internal
package mx.core 
{
    public namespace mx_internal="http://www.adobe.com/2006/flex/mx/internal";
}


//    utils
//      NameUtil
package mx.utils 
{
    import flash.display.*;
    import flash.utils.*;
    import mx.core.*;
    
    use namespace mx_internal;
    
    public class NameUtil extends Object
    {
        public function NameUtil()
        {
            super();
            return;
        }

        public static function displayObjectToString(arg1:flash.display.DisplayObject):String
        {
            var loc1:*=null;
            var loc3:*=null;
            var loc4:*=null;
            var loc2:*=arg1;
            while (loc2 != null) 
            {
                if (loc2.parent && loc2.stage && loc2.parent == loc2.stage) 
                {
                    break;
                }
                loc3 = loc2.name;
                if (loc2 is mx.core.IRepeaterClient) 
                {
                    if (loc4 = mx.core.IRepeaterClient(loc2).instanceIndices) 
                    {
                        loc3 = loc3 + "[" + loc4.join("][") + "]";
                    }
                }
                loc1 = loc1 != null ? loc3 + "." + loc1 : loc3;
                loc2 = loc2.parent;
            }
            return loc1;
        }

        public static function createUniqueName(arg1:Object):String
        {
            if (!arg1) 
            {
                return null;
            }
            var loc1:*=flash.utils.getQualifiedClassName(arg1);
            var loc2:*=loc1.indexOf("::");
            if (loc2 != -1) 
            {
                loc1 = loc1.substr(loc2 + 2);
            }
            var loc3:*;
            if ((loc3 = loc1.charCodeAt((loc1.length - 1))) >= 48 && loc3 <= 57) 
            {
                loc1 = loc1 + "_";
            }
            var loc4:*;
            return loc1 + counter++;
        }

        
        {
            mx_internal::VERSION = "3.0.0.0";
            counter = 0;
        }

        mx_internal static const VERSION:String="3.0.0.0";

        internal static var counter:int=0;
    }
}


//  rare_parasol
package 
{
    import flash.display.*;
    
    public class rare_parasol extends flash.display.Sprite
    {
        public function rare_parasol()
        {
            super();
            return;
        }

        
        {
            rare_parasol_64_a_0_0 = rare_parasol_rare_parasol_64_a_0_0;
            rare_parasol_64_a_0_1 = rare_parasol_rare_parasol_64_a_0_1;
            rare_parasol_64_b_0_0 = rare_parasol_rare_parasol_64_b_0_0;
            rare_parasol_64_b_0_1 = rare_parasol_rare_parasol_64_b_0_1;
            rare_parasol_64_c_0_0 = rare_parasol_rare_parasol_64_c_0_0;
            rare_parasol_64_c_0_1 = rare_parasol_rare_parasol_64_c_0_1;
            rare_parasol_64_d_0_0 = rare_parasol_rare_parasol_64_d_0_0;
            rare_parasol_64_d_0_1 = rare_parasol_rare_parasol_64_d_0_1;
            rare_parasol_icon_a = rare_parasol_rare_parasol_icon_a;
            rare_parasol_icon_b = rare_parasol_rare_parasol_icon_b;
            rare_parasol_32_a_0_0 = rare_parasol_rare_parasol_32_a_0_0;
            rare_parasol_32_a_0_1 = rare_parasol_rare_parasol_32_a_0_1;
            rare_parasol_32_b_0_0 = rare_parasol_rare_parasol_32_b_0_0;
            rare_parasol_32_b_0_1 = rare_parasol_rare_parasol_32_b_0_1;
            rare_parasol_32_c_0_0 = rare_parasol_rare_parasol_32_c_0_0;
            rare_parasol_32_c_0_1 = rare_parasol_rare_parasol_32_c_0_1;
            rare_parasol_32_d_0_0 = rare_parasol_rare_parasol_32_d_0_0;
            rare_parasol_32_d_0_1 = rare_parasol_rare_parasol_32_d_0_1;
        }

        public static const manifest:Class=rare_parasol_manifest;

        public static const index:Class=rare_parasol_index;

        public static const rare_parasol_logic:Class=rare_parasol_rare_parasol_logic;

        public static const rare_parasol_assets:Class=rare_parasol_rare_parasol_assets;

        public static const rare_parasol_visualization:Class=rare_parasol_rare_parasol_visualization;

        public static var rare_parasol_64_c_0_0:Class;

        public static var rare_parasol_icon_a:Class;

        public static var rare_parasol_icon_b:Class;

        public static var rare_parasol_32_b_0_1:Class;

        public static var rare_parasol_32_d_0_1:Class;

        public static var rare_parasol_32_a_0_0:Class;

        public static var rare_parasol_32_a_0_1:Class;

        public static var rare_parasol_32_c_0_0:Class;

        public static var rare_parasol_32_c_0_1:Class;

        public static var rare_parasol_32_b_0_0:Class;

        public static var rare_parasol_32_d_0_0:Class;

        public static var rare_parasol_64_a_0_0:Class;

        public static var rare_parasol_64_a_0_1:Class;

        public static var rare_parasol_64_c_0_1:Class;

        public static var rare_parasol_64_b_0_1:Class;

        public static var rare_parasol_64_d_0_0:Class;

        public static var rare_parasol_64_d_0_1:Class;

        public static var rare_parasol_64_b_0_0:Class;
    }
}


//  rare_parasol_index
package 
{
    import mx.core.*;
    
    public class rare_parasol_index extends mx.core.ByteArrayAsset
    {
        public function rare_parasol_index()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_manifest
package 
{
    import mx.core.*;
    
    public class rare_parasol_manifest extends mx.core.ByteArrayAsset
    {
        public function rare_parasol_manifest()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_a_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_a_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_a_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_a_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_a_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_a_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_b_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_b_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_b_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_b_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_b_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_b_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_c_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_c_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_c_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_c_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_c_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_c_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_d_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_d_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_d_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_32_d_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_32_d_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_32_d_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_a_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_a_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_a_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_a_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_a_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_a_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_b_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_b_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_b_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_b_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_b_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_b_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_c_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_c_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_c_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_c_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_c_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_c_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_d_0_0
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_d_0_0 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_d_0_0()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_64_d_0_1
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_64_d_0_1 extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_64_d_0_1()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_assets
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_assets extends mx.core.ByteArrayAsset
    {
        public function rare_parasol_rare_parasol_assets()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_icon_a
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_icon_a extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_icon_a()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_icon_b
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_icon_b extends mx.core.BitmapAsset
    {
        public function rare_parasol_rare_parasol_icon_b()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_logic
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_logic extends mx.core.ByteArrayAsset
    {
        public function rare_parasol_rare_parasol_logic()
        {
            super();
            return;
        }
    }
}


//  rare_parasol_rare_parasol_visualization
package 
{
    import mx.core.*;
    
    public class rare_parasol_rare_parasol_visualization extends mx.core.ByteArrayAsset
    {
        public function rare_parasol_rare_parasol_visualization()
        {
            super();
            return;
        }
    }
}


