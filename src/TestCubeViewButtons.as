package
{
   import com.greensock.TweenMax;
   
   import common.HalcyonHGroup;
   import common.TweenedButton;
   
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class TestCubeViewButtons extends Sprite
   {
      private var _hGroup:HalcyonHGroup;
      private var _buttonsHGroup:HalcyonHGroup;
      private var _leftArrowBtn:TweenedButton;
      private var _webcamBtn:TweenedButton;
      private var _connectBtn:TweenedButton;
      private var _infoBtn:TweenedButton;
      private var _helpBtn:TweenedButton;
      private var _awayBtn:TweenedButton;
      private var _rightArrowBtn:TweenedButton;
      private var _preferredWidth:Number = 24;
      private var _preferredHieght:Number = 24;
      private var _maskingShape:Shape;
      
      public function TestCubeViewButtons()
      {
         _maskingShape = new Shape();
         _hGroup = new HalcyonHGroup(this);
         _hGroup.top = 50;
         _hGroup.horizontalgap = 15;
         _buttonsHGroup = new HalcyonHGroup(_hGroup, 143, 24);
         _buttonsHGroup.horizontalgap = 15;
         _leftArrowBtn = new TweenedButton(McLeftArrow, _preferredWidth, _preferredHieght);
         _webcamBtn = new TweenedButton(McWebcam, _preferredWidth, _preferredHieght);
         _connectBtn = new TweenedButton(McCall, _preferredWidth, _preferredHieght);
         _infoBtn = new TweenedButton(McInfo, _preferredWidth, _preferredHieght);
         _helpBtn = new TweenedButton(McHelp, _preferredWidth, _preferredHieght);
         _awayBtn = new TweenedButton(McAway, _preferredWidth, _preferredHieght);
         _rightArrowBtn = new TweenedButton(McRightArrow, _preferredWidth, _preferredHieght);
         _hGroup.addChild(_leftArrowBtn);
         _buttonsHGroup.addChild(_webcamBtn);
         _buttonsHGroup.addChild(_connectBtn);
         _buttonsHGroup.addChild(_helpBtn);
         _buttonsHGroup.addChild(_infoBtn);
         _buttonsHGroup.addChild(_awayBtn);
         _hGroup.addChild(_buttonsHGroup);
         _hGroup.addChild(_rightArrowBtn);
         _leftArrowBtn.addEventListener(MouseEvent.CLICK, onLeftArrowBtnClick, false, 0, true);
         _webcamBtn.addEventListener(MouseEvent.CLICK, onWebcamBtnClick, false, 0, true);
         _connectBtn.addEventListener(MouseEvent.CLICK, onCallBtnClick, false, 0, true);
         _infoBtn.addEventListener(MouseEvent.CLICK, onInfoBtnClick, false, 0, true);
         _helpBtn.addEventListener(MouseEvent.CLICK, onHelpBtnClick, false, 0, true);
         _awayBtn.addEventListener(MouseEvent.CLICK, onAwayBtnClick, false, 0, true);
         _rightArrowBtn.addEventListener(MouseEvent.CLICK, onRightArrowBtnClick, false, 0, true);
         this.addChild(_hGroup);
         
         _maskingShape = new Shape;
         _maskingShape.graphics.lineStyle();
         drawMask(_buttonsHGroup.x, _buttonsHGroup.y);
         _buttonsHGroup.mask = _maskingShape;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.addEventListener(Event.RESIZE, onResize, false, 0, true);
         _leftArrowBtn.enabled = false;
      }
      
      private function drawMask(argX:Number, argY:Number):void {
         _maskingShape.graphics.clear();
         _maskingShape.graphics.beginFill(0xFFFFFF, 1);
         _maskingShape.graphics.drawRect(argX, argY, 149, 75);
         _maskingShape.graphics.endFill();
      }
      
      private function onResize(event:Event):void {
         drawMask(_buttonsHGroup.x, _buttonsHGroup.y);
      }
      
      private var _previousXValue:Number;
      
      private function onLeftArrowBtnClick(event:Event):void {
         TweenMax.to(_buttonsHGroup, 1.0, {x:_previousXValue});
         _leftArrowBtn.enabled = false;
         _rightArrowBtn.enabled = true;
      }
      
      private function onRightArrowBtnClick(event:Event):void {
         _previousXValue = _buttonsHGroup.x;
         TweenMax.to(_buttonsHGroup, 1.0, {x:-1});
         _rightArrowBtn.enabled = false;
         _leftArrowBtn.enabled = true;
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
      
   }
}