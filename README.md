# AS3 Timer Doesn't Stop at Zero

This repository demonstrates a bug where an ActionScript 3 Timer object continues to run even after its `repeatCount` is reached.  The timer should stop automatically, but instead, it continues firing events indefinitely.

## Bug Description:

A Timer object is created and configured to repeat a specific number of times. However, upon reaching the specified `repeatCount`, the timer fails to stop, resulting in unexpected and infinite event triggering.

## Solution:

The provided solution ensures that the timer's `stop()` method is called explicitly once `repeatCount` is reached. This prevents the timer from running indefinitely.

## How to Reproduce the Bug:

1. Open `bug.as`.
2. Run the ActionScript code.
3. Observe that even after the specified number of repeats (e.g., 5), the `timer` event continues to fire.