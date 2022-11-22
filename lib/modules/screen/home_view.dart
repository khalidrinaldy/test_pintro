import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:test_pintro/widgets/color_show.dart';
import 'package:test_pintro/widgets/number_show.dart';

import '../controller/dashboard_controller.dart';

class HomeView extends GetView<DashboardController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => ColorShow(color: Color(controller.colorValue))),
          Obx(() => NumberShow(number: controller.numberValue)),
        ],
      ),
    );
  }
}