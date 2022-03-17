import 'package:flutter/material.dart';
import 'package:flutter_clock_demo/controllers/theme_controller.dart';
import 'package:flutter_clock_demo/utils/theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import './screens/home_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController _controller = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: _controller.theme,
      home: HomeScreen(),
    );
  }
}
