import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../size_config.dart';

class TimeWidget extends StatefulWidget {
  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  DateTime _now = DateTime.now();
  Timer _timer;
  bool _showColun = true;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      _now = DateTime.now();
      _showColun = !_showColun;
      setState(() => true);
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          DateFormat(_showColun ? 'h:mm' : 'h mm').format(_now),
          style: Theme.of(context)
              .textTheme
              .headline1
              .copyWith(fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 5),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            DateFormat('a').format(_now),
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18.0),
            ),
          ),
        ),
      ],
    );
  }
}
