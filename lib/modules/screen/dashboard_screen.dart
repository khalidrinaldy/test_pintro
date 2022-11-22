import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../controller/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: () {
          DateTime now = DateTime.now();
          if (controller.currentBackPressTime.year == 1970 ||
              now.difference(controller.currentBackPressTime) >
                  Duration(seconds: 2)) {
            controller.currentBackPressTime = now;
            Fluttertoast.showToast(
              msg: "Press back again to exit",
              backgroundColor: Color(0xFF045c8f),
              fontSize: 16,
              gravity: ToastGravity.BOTTOM,
            );
            return Future.value(false);
          }
          return Future.value(true);
        },
        child: Scaffold(
          appBar: AppBar(
            title: controller.headOfPages.elementAt(controller.currentIndex),
            centerTitle: true,
          ),
          body: Center(
            child: controller.pages.elementAt(controller.currentIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: controller.changeNavBar,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "Setting",
                icon: Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
