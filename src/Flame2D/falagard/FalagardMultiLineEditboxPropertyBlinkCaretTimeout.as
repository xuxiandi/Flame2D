

package Flame2D.falagard
{
    import Flame2D.core.properties.FlameProperty;
    import Flame2D.core.properties.FlamePropertyHelper;
    import Flame2D.core.system.FlameWindow;

    /*!
    \brief
    Property to access the setting that controls the speed at which the caret
    blinks when the caret blink option is enabled.
    
    \par Usage:
    - Name: BlinkCaretTimeout
    - Format: float (floating point value representing seconds).
    */
    public class FalagardMultiLineEditboxPropertyBlinkCaretTimeout extends FlameProperty
    {
        public function FalagardMultiLineEditboxPropertyBlinkCaretTimeout()
        {
            super(
                "BlinkCaretTimeout",
                "Property to get/set the caret blink timeout / speed.  " +
                "Value is a float value indicating the timeout in seconds.",
                "0.66");
        }
        
        //----------------------------------------------------------------------------//
        override public function getValue(receiver:*):String
        {
            var wr:FalagardMultiLineEditbox = (receiver as FlameWindow).getWindowRenderer() as FalagardMultiLineEditbox;
            
            return FlamePropertyHelper.floatToString(wr.getCaretBlinkTimeout());
        }
        
        //----------------------------------------------------------------------------//
        override public function setValue(receiver:*, value:String):void
        {
            var wr:FalagardMultiLineEditbox = (receiver as FlameWindow).getWindowRenderer() as FalagardMultiLineEditbox;
            
            wr.setCaretBlinkTimeout(FlamePropertyHelper.stringToFloat(value));
        }
    }
}