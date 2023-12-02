// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';
import 'funtionsettingdevices.dart';

///
///
///
///

void ModeAlert() {
  List<String> modealarm = [
    'ابتدا پیامک سپس تماس با تکرار',
    'ابتدا تماس سپس پیامک با تکرار',
    'ابندا پیامک سپس تماس',
    'ابتدا تماس سپس پیامک',
  ];
  Get.defaultDialog(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      title: 'مد آلارم',
      titleStyle: TextStyle(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1]),
      content: Container(
          width: Get.width * 0.7,
          child: Column(
            children: [
              Text(
                ' یکی از گزینه های زیر را برای تعیین مد آلارم انتخاب کنید',
                style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                    children: List.generate(modealarm.length, (index) {
                  return InkWell(
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
                                .MoodAlarm
                                .value = '$index';

                            final Telephony telephony = Telephony.instance;
                            if (index == 0 || index == 1) {
                              telephony.sendSms(
                                to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                message:
                                    '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*${index}#',
                              );
                              Get.back();
                              Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            } else {
                              telephony.sendSms(
                                to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                message:
                                    '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*${index + 4}#',
                              );
                              Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            }
                            await Get.find<controllerphoneinfo>(tag: 'secend')
                                .updatePhone();
                            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            Get.back();
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .startfifteensecends();
                          });
                    },
                    child: Obx(() {
                      return Container(
                          width: 300,
                          padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Get.find<controllerphoneinfo>(tag: 'secend')
                                          .MoodAlarm
                                          .value ==
                                      '$index'
                                  ? mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]
                                  : mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![0],
                              border: Border.all(
                                  color: mapTheme[
                                      Get.find<controllerphoneinfo>(tag: 'secend')
                                          .theme
                                          .value]![1]),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              modealarm[index],
                              style: TextStyle(
                                color: Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .MoodAlarm
                                            .value ==
                                        '$index'
                                    ? mapTheme[Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .theme
                                        .value]![0]
                                    : mapTheme[Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            ),
                          ));
                    }),
                  );
                })),
              )
            ],
          )));
}
////
///
///
///

class moodalarmb extends StatelessWidget {
  const moodalarmb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'مد آلارم',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                List<String> modealarm2 = [
                  'ابتدا پیامک سپس تماس با تکرار',
                  'ابتدا تماس سپس پیامک با تکرار',
                  'ابندا پیامک سپس تماس',
                  'ابتدا تماس سپس پیامک',
                ];
                return Text(
                  'مقدار فعلی:${modealarm2[int.parse(Get.find<controllerphoneinfo>(tag: 'secend').MoodAlarm.value)]}',
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                );
              }),
              InkWell(
                onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                            .fifteensecends
                            .value >=
                        15
                    ? () => ModeAlert()
                    : () => Get.snackbar(
                        'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.all(3),
                  width: Get.width * 0.2,
                  child: Center(
                    child: Text(
                      'ویرایش',
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
          )
        ],
      ),
    );
  }
}

///
///
///
///

class reportinbder extends StatelessWidget {
  const reportinbder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'گزارش دوره ای موجودی',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () {
                  return Text(
                    'مقدار فعلی:${Get.find<controllerphoneinfo>(tag: 'secend').PeriodicInventoryReport.value} پیامک',
                    style: TextStyle(
                      color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![1],
                    ),
                  );
                }
              ),
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () => Reportsim()
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: EdgeInsets.all(3),
                    width: Get.width * 0.2,
                    child: Center(
                      child: Text(
                        'ویرایش',
                        style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                      ),
                    ),
                  ),
                );
              })
            ],
          )
        ],
      ),
    );
  }
}

///
///
///
///
///

class reportbatery extends StatelessWidget {
  const reportbatery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'گزارش دورای باتری',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () {
                  return Text(
                    'مقدار فعلی:${Get.find<controllerphoneinfo>(tag: 'secend').PeriodicBatteryReport.value} پیامک',
                    style: TextStyle(
                      color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![1],
                    ),
                  );
                }
              ),
              InkWell(
                onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                            .fifteensecends
                            .value >=
                        15
                    ? () => Reportbatery()
                    : () => Get.snackbar(
                        'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.all(3),
                  width: Get.width * 0.2,
                  child: Center(
                    child: Text(
                      'ویرایش',
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
          )
        ],
      ),
    );
  }
}

class timerelleh extends StatelessWidget {
  const timerelleh({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            'زمان آژیر',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () {
                  return Text(
                    'مقدار فعلی:${Get.find<controllerphoneinfo>(tag: 'secend').AlarmTime.value} دقیقه',
                    style: TextStyle(
                      color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![1],
                    ),
                  );
                }
              ),
              Obx(() {
                return InkWell(
                  onTap: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? () => TimeAlert()
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Container(
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        )),
                    child: Center(
                      child: Text(
                        'ویرایش',
                        style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ],
      ),
    ));
  }
}

class calleme extends StatelessWidget {
  const calleme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width * 0.9,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            border: Border.all(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
            borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            Text(
              'تماس در قطع برق',
              style: TextStyle(
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
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
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                middleTextStyle: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                onConfirm: () async {
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .CallOnElectricity
                                      .value = 'on';

                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*1#',
                                  );
                                  Get.back();
                                  await Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .CallOnElectricity
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
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'فعال',
                          style: TextStyle(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .CallOnElectricity
                                        .value ==
                                    'on'
                                ? mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![0]
                                : mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                          ),
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
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                middleTextStyle: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                onConfirm: () async {
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .CallOnElectricity
                                      .value = 'off';

                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*55*0#',
                                  );
                                  Get.back();
                                  await Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .CallOnElectricity
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
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'غیر فعال',
                          style: TextStyle(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .CallOnElectricity
                                        .value ==
                                    'off'
                                ? mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![0]
                                : mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

class languge extends StatelessWidget {
  const languge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width * 0.9,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            border: Border.all(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
            borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            Text(
              'زبان دستگاه',
              style: TextStyle(
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
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
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                middleTextStyle: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                onConfirm: () async {
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Language
                                      .value = 'fri';

                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*53*0#',
                                  );
                                  Get.back();
                                  await Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Language
                                      .value ==
                                  'fri'
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
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'فارسی',
                          style: TextStyle(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .Language
                                        .value ==
                                    'fri'
                                ? mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![0]
                                : mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                          ),
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
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                middleTextStyle: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                onConfirm: () async {
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Language
                                      .value = 'eng';

                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*53*1#',
                                  );
                                  Get.back();
                                  await Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Container(
                      width: Get.width * 0.3,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .Language
                                      .value ==
                                  'eng'
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
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Text(
                          'English',
                          style: TextStyle(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .Language
                                        .value ==
                                    'eng'
                                ? mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![0]
                                : mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
