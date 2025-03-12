Sample project for an issue in iOS 18.4 Beta 2.

If a webview has a modified `contentInset` top value, the `touchend` event sent to the webview is incorrectly offset. 

Running this project in a simulator demonstrates the problem.
Tapping a row triggers a `touchend` event on the wrong row.

A workaround is to scroll a few rows down before tapping.
