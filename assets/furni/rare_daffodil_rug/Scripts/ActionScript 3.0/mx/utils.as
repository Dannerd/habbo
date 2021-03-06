//utils
//  NameUtil
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


