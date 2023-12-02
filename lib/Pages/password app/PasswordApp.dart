// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class PasswordApp extends StatefulWidget {
  const PasswordApp({Key? key}) : super(key: key);

  @override
  State<PasswordApp> createState() => _PasswordAppState();
}

class _PasswordAppState extends State<PasswordApp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController pass2, pass3;
    pass2 = TextEditingController();
    pass3 = TextEditingController();
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'مدیریت امنیت نرم افزار',
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
            Container(
              width: Get.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.5,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Obx(() {
                        return DropdownButton<String>(
                          dropdownColor: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![0],
                          onChanged: (value) async {
                            if (value == '(اپدیت بعدی)اثر انگشت') {
                              Get.snackbar(
                                  'توجه', 'این آپشن در آپدیت بعدی ارایه میشود');
                            } else {
                              Get.find<controlleronoff>(tag: 'secend')
                                  .valuepassword
                                  .value = value!;
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();

                              prefs.setString('valuepassword', value);
                            }
                            Get.find<controlleronoff>(tag: 'secend')
                                .valuepassword
                                .value = value!;
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();

                            prefs.setString('valuepassword', value);
                          },
                          value: Get.find<controlleronoff>(tag: 'secend')
                              .valuepassword
                              .value,
                          items: <String>[
                            '(اپدیت بعدی)اثر انگشت',
                            'رمز عبور',
                            'بدون رمز',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              alignment: AlignmentDirectional.center,
                              child: Obx(() {
                                return Text(
                                  value,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // fontSize: 20,
                                    color: mapTheme[
                                        Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .theme
                                            .value]![1],
                                    //fontFamily: 'Paeez'
                                  ),
                                );
                              }),
                            );
                          }).toList(),
                        );
                      }),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.defaultDialog(
                        title: 'هشدار',
                        middleText: 'از تغییر دادن پسورد اپ مطمعن هستید؟',
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
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                        middleTextStyle: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                        onConfirm: () async {
                          if (pass2.text == pass3.text) {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();

                            prefs.setString('password', pass2.text);
                            Get.back();
                            Get.snackbar('هشدار', 'رمز تغییر کرد');
                          } else {
                            Get.snackbar('خطا', 'دو رمز باهم همخوانی ندارند');
                          }
                        }),
                    child: Container(
                      width: Get.width * 0.25,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'ثبت',
                          style: TextStyle(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
