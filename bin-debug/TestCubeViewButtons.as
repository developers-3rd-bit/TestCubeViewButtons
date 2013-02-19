package
{
   import com.halcyon.util.utilities.ButtonUtil;
   
   import common.HalcyonHGroup;
   import common.TweenedButton;
   
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class TestCubeViewButtons extends Sprite
   {
      private var _hGroup:HalcyonHGroup;
      private var _leftArrowBtn:TweenedButton;
      private var _webcamBtn:TweenedButton;
      private var _connectBtn:TweenedButton;
      private var _infoBtn:TweenedButton;
      private var _helpBtn:TweenedButton;
      private var _awayBtn:TweenedButton;
      private var _rightArrowBtn:TweenedButton;
      
      public function TestCubeViewButtons()
      {
         _hGroup = new HalcyonHGroup(this);
         _hGroup.top = 50;
         _hGroup.horizontalgap = 15;
         _hGroup.width = 20;
         _leftArrowBtn = new TweenedButton(McLeftArrow);
         _webcamBtn = new TweenedButton(McWebcam);
         _connectBtn = new TweenedButton(McCall);
         _infoBtn = new TweenedButton(McInfo);
         _helpBtn = new TweenedButton(McHelp);
         _awayBtn = new TweenedButton(McAway);
         _rightArrowBtn = new TweenedButton(McRightArrow);
         _hGroup.addChild(_leftArrowBtn);
         _hGroup.addChild(_webcamBtn);
         _hGroup.addChild(_connectBtn);
         _hGroup.addChild(_helpBtn);
         _hGroup.addChild(_infoBtn);
         _hGroup.addChild(_awayBtn);
         var emptySprite:Sprite = new Sprite();
         _hGroup.addChild(emptySprite);
         _hGroup.addChild(_rightArrowBtn);
         _leftArrowBtn.addEventListener(MouseEvent.CLICK, onLeftArrowBtnClick, false, 0, true);
         _webcamBtn.addEventListener(MouseEvent.CLICK, onWebcamBtnClick, false, 0, true);
         _connectBtn.addEventListener(MouseEvent.CLICK, onCallBtnClick, false, 0, true);
         _infoBtn.addEventListener(MouseEvent.CLICK, onInfoBtnClick, false, 0, true);
         _helpBtn.addEventListener(MouseEvent.CLICK, onHelpBtnClick, false, 0, true);
         _awayBtn.addEventListener(MouseEvent.CLICK, onAwayBtnClick, false, 0, true);
         _rightArrowBtn.addEventListener(MouseEvent.CLICK, onRightArrowBtnClick, false, 0, true);
         this.addChild(_hGroup);
         this.l
      }
      
      private function onLeftArrowBtnClick(event:Event):void {
         
      }
      
      private function onWebcamBtnClick(event:Event):void {
         
      }
      
      private function onCallBtnClick(event:Event):void {
         
      }
      
      private function onInfoBtnClick(event:Event):void {
         
      }
      
      private function onHelpBtnClick(event:Event):void {
         
      }
      
      private function onAwayBtnClick(event:Event):void {
         
      }
      
      private function onRightArrowBtnClick(event:Event):void {
         
      }
      
   }
}