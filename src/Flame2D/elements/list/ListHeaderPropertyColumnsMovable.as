/*!
\brief
Property to access the setting for user moving of the column headers.

\par Usage:
- Name: ColumnsMovable
- Format: "[text]"

\par Where [Text] is:
- "True" to indicate the column headers can be moved by the user.
- "False" to indicate the column headers can not be moved by the user.
*/
package Flame2D.elements.list
{
    import Flame2D.core.properties.FlameProperty;
    import Flame2D.core.properties.FlamePropertyHelper;
    
    public class ListHeaderPropertyColumnsMovable extends FlameProperty
    {
        public function ListHeaderPropertyColumnsMovable()
        {
            super(
                "ColumnsMovable",
                "Property to get/set the setting for user moving of the column headers.  Value is either \"True\" or \"False\".",
                "True");
        }
        
        override public function getValue(receiver:*):String
        {
            return FlamePropertyHelper.boolToString((receiver as FlameListHeader).isColumnDraggingEnabled());
        }
        
        
        override public function setValue(receiver:*, value:String):void
        {
            (receiver as FlameListHeader).setColumnDraggingEnabled(FlamePropertyHelper.stringToBool(value));
        }
    }
}