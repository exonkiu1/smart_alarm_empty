// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class PasswordDevices extends StatefulWidget {
  const PasswordDevices({Key? key}) : super(key: key);

  @override
  State<PasswordDevices> createState() => _PasswordDevicesState();
}

class _PasswordDevicesState extends State<PasswordDevices> {
  @override
  Widget build(BuildContext context) {
    TextEditingController pass1, pass2, pass3;
    pass1 = TextEditingController();
    pass2 = TextEditingController();
    pass3 = TextEditingController();
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'تغییر پسورد دستگاه',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
        ),
        shadowColor: Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                'light'
            ? Colors.black
            : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue'
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
            : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue'
                ? Colors.grey[200]
                : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                        'yellow'
                    ? Color(0xFF41423D)
                    : Colors.black,
        foregroundColor: Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value ==
                'light'
            ? Colors.black
            : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue'
                ? Colors.lightBlue
                : Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width * 0.9,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: TextField(
                controller: pass1,
                maxLength: 4,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'رمز فعلی را وارد کنید',
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width * 0.9,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: TextField(
                controller: pass2,
                maxLength: 4,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'رمز جدید را وارد کنید',
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: Get.width * 0.9,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: TextField(
                controller: pass3,
                maxLength: 4,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'رمز جدید را تکرار کنید',
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => Get.defaultDialog(
                title: 'هشدار',
                middleText: 'از تغییر دادن پسورد دستگاه مطمعن هستید؟',
                textConfirm: 'بله',
                confirmTextColor: mapTheme[
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![0],
                backgroundColor: mapTheme[
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![0],
                buttonColor: mapTheme[
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                titleStyle: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                middleTextStyle: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                onConfirm: () async {
                  if (Get.find<controllerphoneinfo>(tag: 'secend')
                              .Password
                              .value ==
                          pass1.text &&
                      pass2.text == pass3.text) {
                    Get.back();
                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*40*${pass2.text}#',
                    );
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .Password
                        .value = pass2.text;
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
                    var prefs = await SharedPreferences.getInstance();

                    prefs.setString('password_1', pass2.text);
                  } else {
                    Get.snackbar('خطا', 'فیلد هارا دوباره و صحیح وارد کنید');
                  }
                }),
            child: Container(
              width: Get.width * 0.25,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Text(
                  'ثبت',
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
