//BitmapAsset
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


