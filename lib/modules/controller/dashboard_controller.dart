import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:test_pintro/modules/screen/home_view.dart';
import 'package:test_pintro/modules/screen/setting_view.dart';
import 'dart:math' as math;

class DashboardController extends GetxController {
  //Index for navigation bar
  RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int currentIndex) => _currentIndex.value = currentIndex;

  void changeNavBar(int index) => currentIndex = index;

  final List<Widget> headOfPages = <Widget>[
    Image.asset("assets/logo-pintro.png"),
    Text("Setting"),
  ];

  final List<Widget> pages = <Widget>[
    HomeView(),
    SettingView(),
  ];

  RxInt _colorValue = (math.Random().nextDouble() * 0xFFFFFF).toInt().obs;
  int get colorValue => _colorValue.value;
  set colorValue(int colorValue) => _colorValue.value = colorValue;

  void changeColorValue() =>
      colorValue = (math.Random().nextDouble() * 0xFFFFFF).toInt();

  RxInt _numberValue = (math.Random().nextInt(1000)).toInt().obs;
  int get numberValue => _numberValue.value;
  set numberValue(int numberValue) => _numberValue.value = numberValue;

  void changeNumberValue() =>
      numberValue = (math.Random().nextInt(1000)).toInt();

  Rx<DateTime> _currentBackPressTime = DateTime(1970).obs;
  DateTime get currentBackPressTime => _currentBackPressTime.value;
  set currentBackPressTime(DateTime currentBackPressTime) =>
      _currentBackPressTime.value = currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime.year == 1970 ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: "Press back again to exit",
        backgroundColor: Color(0xFF045c8f),
        fontSize: 16,
        gravity: ToastGravity.BOTTOM,
      );
      return Future.value(false);
    }
    return Future.value(true);
  }
}
