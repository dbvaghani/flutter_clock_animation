import 'package:flutter/material.dart';
import 'package:flutter_clock_demo/utils/size_config.dart';
import 'package:flutter_clock_demo/widgets/home_body.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: _buildAppBar(context),
      body: HomeBody(),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          ImageNames.settingsIcon,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {},
      ),
      actions: [_buildAddButton(context)],
    );
  }

  Padding _buildAddButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
