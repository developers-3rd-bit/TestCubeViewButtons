package common
{
   import com.greensock.TweenMax;
   
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;

   public class TweenedButton extends Sprite
   {
      private var _tween:TweenMax;
      private var _icon:Sprite;
      
      public function TweenedButton(argClass:Class)
      {
         this.buttonMode = true;
         _icon = new argClass();
         this.addChild(_icon);
         this.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver, false, 0, true);
         this.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut, false, 0, true);
      }
      
      private function onMouseOver(event:Event):void {
         _tween = TweenMax.to(this, .5, {tint:0x00ff00});
      }
      
      private function onMouseOut(event:Event):void {
         if(_tween)
            _tween.reverse(false);
      }
   }
}