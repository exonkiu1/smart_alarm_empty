// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

TextEditingController maxcapsole = TextEditingController();
TextEditingController mincapsole = TextEditingController();
set_capsol() => Get.defaultDialog(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      title: 'تنظیم بازه کپسول شارژ',
      titleStyle: TextStyle(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1]),
      content: Container(
        width: Get.width * 0.7,
        child: Column(
          children: [
            Text(
              'کپسول در حداکثر شارژ پر نمایش داده میشود.همچنین در حداقل شارژ کاملا خالی نمایش داده می شود',
              style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1]),
            ),
            TextField(
              autofocus: true,
              controller: maxcapsole,
              keyboardType: TextInputType.phone,
              cursorColor: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
              style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                  fontSize: 20),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                  hintText:
                      'تومان${Get.find<controllerphoneinfo>(tag: 'secend').Chargemax.value}حداکثر شارژ',
                  hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                      fontSize: 16)),
            ),
            TextField(
              controller: mincapsole,
              keyboardType: TextInputType.phone,
              cursorColor: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
              style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                  fontSize: 20),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                  hintText:
                      'تومان${Get.find<controllerphoneinfo>(tag: 'secend').Chargemin.value}حداقل شارژ',
                  hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                      fontSize: 16)),
            ),
            InkWell(
              onTap: () async {
                if (int.parse(maxcapsole.text) > int.parse(mincapsole.text) &&
                    int.parse(mincapsole.text) >= 1000 &&
                    int.parse(maxcapsole.text) >= 5000) {
                  Get.find<controllerphoneinfo>(tag: 'secend').Chargemax.value =
                      int.parse(maxcapsole.text);
                  Get.find<controllerphoneinfo>(tag: 'secend').Chargemin.value =
                      int.parse(mincapsole.text);
                  Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
                  Get.snackbar('اطلاعیه', 'تغییر مورد نظر انجام شد');
                } else {
                  Get.snackbar('خطا', 'اطلاعات درست و هر دو فیلد پر شود');
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text(
                  'تایید',
                  style: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1]),
                ),
              ),
            ),
          ],
        ),
      ),
    );

delete_device() => Get.defaultDialog(
    title: 'هشدار',
    middleText: 'از حذف دستگاه مطمعن هستید؟',
    textConfirm: 'بله',
    confirmTextColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    buttonColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    middleTextStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    onConfirm: () {
      Get.find<controllerphoneinfo>(tag: 'secend').Deletephons();
      Get.back();
    });
