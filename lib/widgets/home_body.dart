// svg
// mostly use stateless widget, if needed seprate statefull widget
// coding structure
// size configuration

import 'package:flutter/material.dart';
import 'package:flutter_clock_demo/widgets/clock.dart';
import 'package:flutter_clock_demo/widgets/country_card.dart';
import 'package:flutter_clock_demo/widgets/time_widget.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Dubai, UAE",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            TimeWidget(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/images/ic_liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "+19 HRS | AEST",
                    iconSrc: "assets/images/ic_sydeny.svg",
                    time: "1:20",
                    period: "PM",
                  ),
                ],
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
