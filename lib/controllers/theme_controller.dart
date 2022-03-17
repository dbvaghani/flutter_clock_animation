import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _storage = GetStorage();
  final _themeKey = "isDarkMode";

  var isDarkTheme = true.obs;

  ThemeMode get theme => _loadThemeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromStorage() {
    isDarkTheme.value = _storage.read(_themeKey) ?? false;
    return isDarkTheme.value;
  }

  //Save isDarkMode to Local Storage
  _saveThemeToBox(bool isDarkMode) => _storage.write(_themeKey, isDarkMode);

  ///Switch theme and save to local storage
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromStorage() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromStorage());
  }
}
