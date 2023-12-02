import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telephony/telephony.dart';

import 'Getxcontroller/controllerphoneinfo.dart';
import 'color.dart';

test123() => Get.find<controllerphoneinfo>(tag: 'secend')
            .fifteensecends
            .value >=
        15
    ? () async {
        Get.defaultDialog(
            title: 'هشدار',
            middleText: 'پیامک فرستاده شود؟',
            textConfirm: 'بله',
            confirmTextColor: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
            backgroundColor: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
            buttonColor: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            titleStyle: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
            middleTextStyle: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
            onConfirm: () async {});
      }
    : () => Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید');
