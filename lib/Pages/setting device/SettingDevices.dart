// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/Pages/setting%20device/widgetsettingdevices.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';
import 'funtionsettingdevices.dart';

class SettingDevices extends StatefulWidget {
  const SettingDevices({Key? key}) : super(key: key);

  @override
  State<SettingDevices> createState() => _SettingDevicesState();
}

class _SettingDevicesState extends State<SettingDevices> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: mapTheme[
            Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
        appBar: AppBar(
          title: Center(
            child: Text(
              'تنظیمات دستگاه',
              style: TextStyle(
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
              ),
            ),
          ),
          shadowColor: Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value ==
                  'light'
              ? Colors.black
              : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                      'blue'
                  ? Colors.grey
                  : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                          'yellow'
                      ? Color(0xFFC0C2B9)
                      : Colors.white,
          backgroundColor: Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value ==
                  'light'
              ? Colors.white
              : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                      'blue'
                  ? Colors.grey[200]
                  : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                          'yellow'
                      ? Color(0xFF41423D)
                      : Colors.black,
          foregroundColor:
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                      'light'
                  ? Colors.black
                  : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                          'blue'
                      ? Colors.lightBlue
                      : Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            languge(),
            SizedBox(
              height: 20,
            ),
            calleme(),
            SizedBox(
              height: 20,
            ),
            timerelleh(),
            SizedBox(
              height: 20,
            ),
            reportbatery(),
            SizedBox(
              height: 20,
            ),
            reportinbder(),
            SizedBox(
              height: 20,
            ),
            moodalarmb(),
          ],
        )),
      );
    });
  }
}
