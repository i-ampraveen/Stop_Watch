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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  (_myStopWatch.elapsedMilliseconds).toString(),
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              ElevatedButton(
                  onPressed: handleStartStop,
                  child: Text(_myStopWatch.isRunning ? 'Stop' : 'Start'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
