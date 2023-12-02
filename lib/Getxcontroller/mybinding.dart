import 'package:get/get.dart';
//import 'package:test_android_alarm_manager2/Getxcontroller/testcontroller.dart';

import 'controllerOnOff.dart';
import 'controllercolor.dart';
import 'controllerphoneinfo.dart';
import 'controllershow.dart';

class mybinding implements Bindings {
  @override
  void dependencies() {
    Get.put(controllercolor(), tag: 'secend', permanent: true);
    // Get.put(testcontroller(), tag: 'secend', permanent: true);
    Get.put(controlleronoff(), tag: 'secend', permanent: true);
    Get.put(controllerphoneinfo(), tag: 'secend', permanent: true);
    Get.put(controllershow(), tag: 'secend', permanent: true);
    // TODO: implement dependencies
  }
}
