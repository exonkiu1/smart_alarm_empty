// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

Reportsim() {
  TextEditingController reportsms = TextEditingController();
  Get.defaultDialog(
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    title: 'گزارش دوره ای موجودی',
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'تعیین کنید که بعد از چند پیامک گزارش موجودی شارژ برای شما ارسال شود',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          TextField(
            autofocus: true,
            controller: reportsms,
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
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
                hintText: 'تعداد پیامک',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.back();
              Get.defaultDialog(
                  title: 'هشدار',
                  middleText: 'پیامک فرستاده شود؟',
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
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .PeriodicInventoryReport
                        .value = '${reportsms.text}';

                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*43*${reportsms.text}#',
                    );
                    Get.back();
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
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
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

/////
///
///
///

void Reportbatery() {
  TextEditingController reportbatry = TextEditingController();
  Get.defaultDialog(
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    title: 'گزارش دوره ای باتری',
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'تعیین کنید که بعد از چند دقیقه گزارش  شارژ باتری برای شما ارسال شود',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          TextField(
            autofocus: true,
            controller: reportbatry,
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
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
                hintText: 'دقیقه',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.back();
              Get.defaultDialog(
                  title: 'هشدار',
                  middleText: 'پیامک فرستاده شود؟',
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
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .PeriodicBatteryReport
                        .value = '${reportbatry.text}';

                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*44*${reportbatry.text}#',
                    );
                    Get.back();
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
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
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

///
///
///
///
///
///
void TimeAlert() {
  TextEditingController alaemtime = TextEditingController();
  Get.defaultDialog(
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    title: 'تغییر زمان آژیر',
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'زمان به صدا در آمدن آژیر را به دقیقه وارد کنید',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          TextField(
            autofocus: true,
            controller: alaemtime,
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
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
                hintText: 'زمان آژیر به دقیقه',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.back();
              Get.defaultDialog(
                  title: 'هشدار',
                  middleText: 'پیامک فرستاده شود؟',
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
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .AlarmTime
                        .value = '${alaemtime.text}';

                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*41*${alaemtime.text}#',
                    );
                    Get.back();
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                  });
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
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
