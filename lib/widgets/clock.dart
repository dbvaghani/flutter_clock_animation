import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clock_demo/controllers/theme_controller.dart';
import 'package:flutter_clock_demo/utils/size_config.dart';
import 'package:flutter_clock_demo/widgets/clock_painter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();
  Timer _timer;
  final _oneSec = Duration(seconds: 1);

  final ThemeController _themeController = Get.find();

  @override
  void initState() {
    super.initState();
    Timer.periodic(_oneSec, (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(57)),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: kShadowColor.withOpacity(0.14),
                    blurRadius: 64,
                  ),
                ],
              ),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: getProportionateScreenWidth(15),
            left: 0,
            right: 0,
            child: GetX<ThemeController>(
              builder: (_) {
                return GestureDetector(
                  onTap: _themeController.switchTheme,
                  child: SvgPicture.asset(
                    _themeController.isDarkTheme.value ? ImageNames.sunIcon : ImageNames.moonIcon,
                    height: 24,
                    width: 24,
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
            )),
      ],
    );
  }
}
