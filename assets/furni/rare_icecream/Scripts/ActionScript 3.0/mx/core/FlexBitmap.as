//FlexBitmap
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


