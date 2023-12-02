// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/Pages/relleh/FuntionRelleh.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class Relleh extends StatefulWidget {
  const Relleh({Key? key}) : super(key: key);

  @override
  State<Relleh> createState() => _RellehState();
}

class _RellehState extends State<Relleh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'مدیریت رله',
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0] == ' '
                    ? 'رله 1'
                    : Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0],
                style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
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
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Relleh1
                                    .value = 'on';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*1*ON#',
                                );
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Obx(() {
                    return Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Relleh1
                                      .value ==
                                  'on'
                              ? mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]
                              : null,
                          border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'فعال',
                          style: TextStyle(
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .Relleh1
                                              .value ==
                                          'on'
                                      ? mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![0]
                                      : mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![1]),
                        ),
                      ),
                    );
                  }),
                );
              }),
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
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
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*1*T${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                                );
                                Get.find<controllerphoneinfo>(tag:'secend').startfifteensecends();
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                              });
                              
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Container(
                    width: Get.width * 0.35,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1]),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text(
                        'درب بازکن',
                        style: TextStyle(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1]),
                      ),
                    ),
                  ),
                );
              }),
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
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
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Relleh1
                                    .value = 'off';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*1*OFF#',
                                );
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Obx(() {
                    return Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Relleh1
                                      .value ==
                                  'off'
                              ? mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]
                              : null,
                          border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'غیرفعال',
                          style: TextStyle(
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .Relleh1
                                              .value ==
                                          'off'
                                      ? mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![0]
                                      : mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![1]),
                        ),
                      ),
                    );
                  }),
                );
              })
            ],
          ),

          ///
          ///
          ///
          ///
          ///
          ///
          ///
          ///
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2] == ' '
                    ? 'رله 2'
                    : Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2],
                style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
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
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Relleh2
                                    .value = 'on';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*2*ON#',
                                );
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Obx(() {
                    return Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Relleh2
                                      .value ==
                                  'on'
                              ? mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]
                              : null,
                          border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'فعال',
                          style: TextStyle(
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .Relleh2
                                              .value ==
                                          'on'
                                      ? mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![0]
                                      : mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![1]),
                        ),
                      ),
                    );
                  }),
                );
              }),
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
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
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*2*T${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]}${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]}#',
                                );
                                Get.find<controllerphoneinfo>(tag:'secend').startfifteensecends();
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Container(
                    width: Get.width * 0.35,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1]),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text(
                        'درب بازکن',
                        style: TextStyle(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1]),
                      ),
                    ),
                  ),
                );
              }),
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () async {
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
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Relleh2
                                    .value = 'off';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*20*2*OFF#',
                                );
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Obx(() {
                    return Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Relleh2
                                      .value ==
                                  'off'
                              ? mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]
                              : null,
                          border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          'غیرفعال',
                          style: TextStyle(
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .Relleh2
                                              .value ==
                                          'off'
                                      ? mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![0]
                                      : mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![1]),
                        ),
                      ),
                    );
                  }),
                );
              })
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print('timerelleh1');
              timerelleh1();
            },
            child: Container(
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                      width: 2),
                  borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  'زمان درب بازکن ${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0] == ' ' ? 'رله 1' : Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0]}',
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              print('timerelleh1');
              timerelleh2();
            },
            child: Container(
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                      width: 2),
                  borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  'زمان درب بازکن ${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2] == ' ' ? 'رله 2' : Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2]}',
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print('timerelleh1');
              namerelleh();
            },
            child: Container(
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                      width: 2),
                  borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  'نام گذاری رله ها',
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print('timerelleh1');
              settingrelleh();
            },
            child: Container(
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                      width: 2),
                  borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.all(5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('تنظیمات بیشتر',
                        style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        )),
                    Text('اگر با این قسمت آشنایی ندارید تغییری ندهید!!',
                        style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
