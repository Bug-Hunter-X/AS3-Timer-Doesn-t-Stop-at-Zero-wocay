function updateTimer():void {
  // ... existing code ...
  timer.addEventListener(TimerEvent.TIMER, timerHandler);
  timer.start();
}

function timerHandler(event:TimerEvent):void {
  // ... existing code ...
  if (timer.currentCount >= timer.repeatCount) {
    timer.stop();
    timer.removeEventListener(TimerEvent.TIMER, timerHandler);
  }
}