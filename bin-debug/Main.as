package 
{
   import com.greensock.*;
   
   import fl.controls.Button;
   
   import flash.display.*;
   import flash.events.*;
   
   
   public class Main extends MovieClip
   {
      private var pages:Array;
      private var n:int;
      private var pageHolder:Sprite;
      private var previousPage:MovieClip;
      private var currentPage:MovieClip;
      private var index:int;
      
      
      public function Main()
      {
         pageHolder = new Sprite();
         index = 0;
         
         
         pages = 
            [
               {_class:"", _label:"Home"},
               {_class:"", _label:"About Us"},
               {_class:"", _label:"Contact Us"}
            ];
         
         
         buildUI(pages.length);
      }
      
      
      private function buildUI(n:int):void
      {
         var pad:int = 10;
         var b:Button;
         
         
         for (var i:int = 0; i < n; i++)
         {
            b = new Button();
           // b.gotoAndStop(1);
            //b.id = i;
            b.buttonMode = true;
            b.mouseChildren = false;
            
            
            b.label = String(pages[i]._label);
            //b.label.length = b.label.length + pad;
            b.addEventListener(MouseEvent.CLICK, onClick);
            b.x = (b.width + pad) * i;
            addChild(b);
         }
         
         
         previousPage = new pages[index]._class;
         pageHolder.y = 60;
         pageHolder.addChild(previousPage);
         addChild(pageHolder);
      }
      
      
      private function onClick(e:MouseEvent):void
      {
         index = e.currentTarget.id;
         currentPage = new pages[index]._class;
         pageHolder.addChild(currentPage);
         
         var dur:Number = .5;
         TweenMax.from(currentPage, dur, {alpha:0, x:-currentPage.width});
         TweenMax.to(previousPage, dur, {alpha:0, x:stage.stageWidth, onComplete:pageHolder.removeChildAt, onCompleteParams:[0]});
         previousPage = currentPage;
      }
   }
}