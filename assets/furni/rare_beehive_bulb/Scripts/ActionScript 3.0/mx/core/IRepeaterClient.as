//IRepeaterClient
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


