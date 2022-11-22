import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pintro/modules/controller/dashboard_controller.dart';
import 'package:test_pintro/widgets/color_show.dart';
import 'package:test_pintro/widgets/number_show.dart';

class SettingView extends GetView<DashboardController> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColoredBox(
            color: Color(0xFFbadbf5),
            child: TabBar(
              labelColor: Color(0xFF045c8f),
              indicatorColor: Color(0xFFe8be74),
              tabs: [
                Tab(
                  icon: Icon(Icons.palette),
                ),
                Tab(
                  icon: Icon(Icons.pin),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.6,
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Obx(() => ColorShow(
                        color: Color(controller.colorValue),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () => controller.changeColorValue(),
                          child: Text("Shuffle")),
                    )
                  ],
                ),
                Column(
                  children: [
                    Obx(() => NumberShow(
                        number: controller.numberValue,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () => controller.changeNumberValue(),
                          child: Text("Shuffle")),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
