import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatchStop extends StatefulWidget {
  @override
  _WatchStopState createState() => _WatchStopState();
}

class _WatchStopState extends State<WatchStop> {
  Stopwatch _myStopWatch;
  Timer _myTimer;

  String formatTime(int milliseconds) {
    var millisecs = ((milliseconds ~/ 10) % 98).toString().padLeft(2, '0');
    var secs = milliseconds ~/ 1000;
    //var hours = (secs ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');

    return "$minutes:$seconds.$millisecs";
  }

  @override
  void initState() {
    super.initState();
    _myStopWatch = Stopwatch();
    _myTimer = new Timer.periodic(
      new Duration(milliseconds: 30),
      (timer) {
        setState(
          () {},
        );
      },
    );
  }

  @override
  void dispose() {
    _myTimer.cancel();
    super.dispose();
  }

  void handleStartStop() {
    if (_myStopWatch.isRunning) {
      _myStopWatch.stop();
    } else {
      _myStopWatch.start();
    }
  }

  void reset() {
    _myStopWatch.reset();
    _myStopWatch.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formatTime(_myStopWatch.elapsedMilliseconds),
                style: TextStyle(fontSize: 48.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: handleStartStop,
                    child: Text(_myStopWatch.isRunning ? 'Stop' : 'Start'),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  ElevatedButton(
                    onPressed: reset,
                    child: Text('Reset'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
