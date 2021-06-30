// svg
// mostly use stateless widget, if needed seprate statefull widget
// coding structure 
// size configuration

import 'package:flutter/material.dart';

import '../../widgets/home_screen/clock.dart';
import '../../widgets/home_screen/country_card.dart';
import '../../widgets/home_screen/time_widget.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Surat, Gujarat, India | IST",
                style: Theme.of(context).textTheme.bodyText1),
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
                    country: "Sydney, EU",
                    timeZone: "+19 HRS | AEST",
                    iconSrc: "assets/images/ic_sydeny.svg",
                    time: "1:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/images/ic_liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, EU",
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
