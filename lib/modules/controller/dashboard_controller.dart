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
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(
            "assets/logo-pintro.png",
            fit: BoxFit.cover,
          )),
    ),
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

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print(Get.arguments as String);
  }
}
