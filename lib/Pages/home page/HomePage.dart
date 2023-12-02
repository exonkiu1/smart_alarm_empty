// ignore_for_file: unused_import, file_names

import '/Pages/splash%20screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/Pages/add%20devices/AddDevices.dart';
import '/Pages/contacts/Contacts.dart';
import '/Pages/edit%20sim/Editsim.dart';
import '/Pages/help/Help.dart';
import '/Pages/inqury/Inqury.dart';
import '/Pages/password%20app/PasswordApp.dart';
import '/Pages/password%20devices/PasswordDevices.dart';
import '/Pages/relleh/Relleh.dart';
import '/Pages/setting%20device/SettingDevices.dart';
import '/Pages/setting%20half%20on/SetHalfOn.dart';
import '/Pages/zoon/Zoon.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telephony/telephony.dart';

import '../../color.dart';
import '../../main.dart';

auto_adddevice() async {
  getLatestCall();
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    //     getLatestCall();

    // auto_adddevice();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Obx(() {
      return Scaffold(
        backgroundColor: Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value ==
                'light'
            ? Colors.white
            : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue'
                ? Colors.grey[200]
                : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                        'yellow'
                    ? Color(0xFF616654)
                    : Colors.black,
        key: _scaffoldKey,
        endDrawer: endDRAWER(),
        appBar: AppBar(
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
          /*  leading: Container(
              height: Get.height*0.06,
              child: Image.asset('image/logo.png')), */
          title: Align(
            alignment: Alignment.centerLeft,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hamilton',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value ==
                                'light'
                            ? Colors.black
                            : Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'blue'
                                ? Colors.lightBlue
                                : Colors.white),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                                  Get.back();
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .OnPhones
                                      .value = 'on';
                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        //'روشن'
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*11#',
                                  );
                                  await Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                  Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Obx(() {
                      return Container(
                        width: 127,
                        decoration: BoxDecoration(
                            border: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .OnPhones
                                        .value ==
                                    'on'
                                ? Border.all(
                                    color: Get.find<controllerphoneinfo>(
                                                    tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Get.find<controllerphoneinfo>(
                                                        tag: 'secend')
                                                    .theme
                                                    .value ==
                                                'blue'
                                            ? Colors.lightBlue
                                            : Colors.white,
                                    width: 3)
                                : null,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                'image/icons8-lock-80${Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'light' ? '' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue' ? ' (2)' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'yellow' ? ' (3)' : ' (1)'}.png'),
                            Text(
                              'فعال',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value ==
                                              'blue'
                                          ? Colors.lightBlue
                                          : Colors.white,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      );
                    }),
                  );
                }),
                SizedBox(
                  width: Get.width * 0.2,
                ),
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
                                  Get.back();
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .OnPhones
                                      .value = 'off';
                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        //'خاموش'
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*10#',
                                  );
                                  await Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .updatePhone();
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                  Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Obx(() {
                      return Container(
                        width: 127,
                        decoration: BoxDecoration(
                            border: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .OnPhones
                                        .value ==
                                    'off'
                                ? Border.all(
                                    color: Get.find<controllerphoneinfo>(
                                                    tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Get.find<controllerphoneinfo>(
                                                        tag: 'secend')
                                                    .theme
                                                    .value ==
                                                'blue'
                                            ? Colors.lightBlue
                                            : Colors.white,
                                    width: 3)
                                : null,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                'image/icons8-unlock-80${Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'light' ? '' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue' ? ' (2)' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'yellow' ? ' (3)' : ' (1)'}.png'),
                            Text(
                              'غیر فعال',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value ==
                                              'blue'
                                          ? Colors.lightBlue
                                          : Colors.white,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                }),
              ],
            ),
            SizedBox(
              height: Get.width * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
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
                                Get.back();
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .OnPhones
                                    .value = 'silent';
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*12#',
                                );
                                await Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .updatePhone();
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Obx(() {
                    return Container(
                      width: 127,
                      decoration: BoxDecoration(
                          border: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .OnPhones
                                      .value ==
                                  'silent'
                              ? Border.all(
                                  color: Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value ==
                                              'blue'
                                          ? Colors.lightBlue
                                          : Colors.white,
                                  width: 3)
                              : null,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              'image/icons8-noise-80${Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'light' ? '' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue' ? ' (2)' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'yellow' ? ' (3)' : ' (1)'}.png'),
                          Text(
                            'بی صدا',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Get.find<controllerphoneinfo>(
                                                        tag: 'secend')
                                                    .theme
                                                    .value ==
                                                'blue'
                                            ? Colors.red[300]
                                            : Colors.white,
                                fontSize: 20),
                          )
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  width: Get.width * 0.2,
                ),
                // button_ho(),
                InkWell(
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
                                Get.back();
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .OnPhones
                                    .value = 'halfon';
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*13#',
                                );
                                await Get.find<controllerphoneinfo>(
                                        tag: 'secend')
                                    .updatePhone();
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Obx(() {
                    return Container(
                      width: 127,
                      decoration: BoxDecoration(
                          border: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .OnPhones
                                      .value ==
                                  'halfon'
                              ? Border.all(
                                  color: Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value ==
                                              'blue'
                                          ? Colors.lightBlue
                                          : Colors.white,
                                  width: 3)
                              : null,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              'image/icons8-warning-shield-80${Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'light' ? '' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue' ? ' (2)' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'yellow' ? ' (3)' : ' (1)'}.png'),
                          Text(
                            'نیمه فعال',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Get.find<controllerphoneinfo>(
                                                        tag: 'secend')
                                                    .theme
                                                    .value ==
                                                'blue'
                                            ? Colors.orange[200]
                                            : Colors.white,
                                fontSize: 19),
                          )
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ],
        )),
      );
    });
  }
}

class button_ho extends StatelessWidget {
  const button_ho({super.key});

  @override
  Widget build(BuildContext context) {
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
                    Get.back();
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .OnPhones
                        .value = 'halfon';
                    final Telephony telephony = Telephony.instance;
                    telephony.sendSms(
                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                      message:
                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*13#',
                    );
                    await Get.find<controllerphoneinfo>(tag: 'secend')
                        .updatePhone();
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .startfifteensecends();
                    Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                  });
            }
          : () => Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
      child: Obx(() {
        return Container(
          width: 127,
          decoration: BoxDecoration(
              border:
                  Get.find<controllerphoneinfo>(tag: 'secend').OnPhones.value ==
                          'halfon'
                      ? Border.all(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value ==
                                  'light'
                              ? Colors.black
                              : Get.find<controllerphoneinfo>(tag: 'secend')
                                          .theme
                                          .value ==
                                      'blue'
                                  ? Colors.lightBlue
                                  : Colors.white,
                          width: 3)
                      : null,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'image/icons8-warning-shield-80${Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'light' ? '' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'blue' ? ' (2)' : Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'yellow' ? ' (3)' : ' (1)'}.png'),
              Text(
                'نیمه فعال',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value ==
                            'light'
                        ? Colors.black
                        : Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value ==
                                'blue'
                            ? Colors.orange[200]
                            : Colors.white,
                    fontSize: 19),
              )
            ],
          ),
        );
      }),
    );
  }
}

class endDRAWER extends StatelessWidget {
  const endDRAWER({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PhysicalModel(
        color: mapTheme[
            Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        clipBehavior: Clip.hardEdge,
        elevation: 12,
        borderRadius: BorderRadius.circular(30),
        shadowColor: mapTheme[
            Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        child: Container(
          width: Get.width * 0.5,
          height: Get.height * 0.85,
          decoration: BoxDecoration(
            /* gradient: LinearGradient(
                    colors: Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'light'
                        ? [Colors.black, Colors.white]
                        : [Colors.white, Colors.black],
                    stops: [0.2, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter), */
            /*            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: -2,
              blurRadius: 10,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ], */
            color: Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                    'light'
                ? Colors.white
                : Get.find<controllerphoneinfo>(tag: 'secend').theme.value ==
                        'blue'
                    ? Colors.teal[100]
                    : Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value ==
                            'yellow'
                        ? Color(0xFF352F2F)
                        : Colors.black,
            /*   border: Border.all(
                  color: Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value ==
                          'light'
                      ? Colors.black
                      : Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value ==
                              'blue'
                          ? Colors.blue
                          : Colors.white) */
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: Get.width * 0.2,
                    padding: EdgeInsets.all(5),
                    child: Image.asset('image/hamilton.png')),
               /*  Text('09139914430:پشتیبانی',  textAlign: TextAlign.left,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),), */
                /*   Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('image/logo.png'),
                    )), */
                Transform.translate(
                  offset: Offset(-Get.width * 0.2, -10),
                  child: InkWell(
                      onTap: () async {
                        Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value ==
                                'light'
                            ? Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value = 'dark'
                            : Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'dark'
                                ? Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value = 'blue'
                                : Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .theme
                                            .value ==
                                        'blue'
                                    ? Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .theme
                                        .value = 'yellow'
                                    : Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .theme
                                        .value = 'light';
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString(
                            'theme',
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value);

                        print('hello');
                      },
                      child: Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value ==
                              'light'
                          ? const Icon(
                              Icons.dark_mode,
                            )
                          : Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value ==
                                  'dark'
                              ? const Icon(
                                  Icons.cloud,
                                  color: Colors.white,
                                )
                              : Get.find<controllerphoneinfo>(tag: 'secend')
                                          .theme
                                          .value ==
                                      'blue'
                                  ? const Icon(
                                      Icons.emoji_emotions,
                                      color: Colors.yellow,
                                    )
                                  : const Icon(
                                      Icons.wb_sunny,
                                      color: Colors.white,
                                    )),
                ),
                Obx(() {
                  return Visibility(
                    visible: Get.find<controllerphoneinfo>(tag: 'secend')
                                .lenghtmainpage
                                .value >
                            1
                        ? true
                        : false,
                    replacement: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .Name
                                  .value,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .phone
                                  .value,
                              style: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    child: Obx(() {
                      return Container(
                        width: Get.width * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.5,
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1]),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Column(
                            children: [
                              DropdownButton(
                                  dropdownColor: mapTheme[
                                      Get.find<controllerphoneinfo>(tag: 'secend')
                                          .theme
                                          .value]![0],
                                  elevation: 3,
                                  underline: Container(
                                    width: Get.width * 0.3,
                                    height: 1.5,
                                    color: mapTheme[
                                        Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .theme
                                            .value]![0],
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                  onChanged: (value) {
                                    for (var i = 0;
                                        i <
                                            Get.find<controllerphoneinfo>(
                                                    tag: 'secend')
                                                .lenghtmainpage
                                                .value;
                                        i++) {
                                      if (Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .phoness[i]
                                              .Name ==
                                          value) {
                                        Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .changepage(i);
                                      }
                                    }
                                  },
                                  value:
                                      Get.find<controllerphoneinfo>(tag: 'secend')
                                          .Name
                                          .value,
                                  items: List.generate(
                                      Get.find<controllerphoneinfo>(tag: 'secend')
                                          .lenghtmainpage
                                          .value,
                                      (index) => Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .phoness[index]
                                          .Name).map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              value,
                                              style: TextStyle(
                                                  color: mapTheme[Get.find<
                                                              controllerphoneinfo>(
                                                          tag: 'secend')
                                                      .theme
                                                      .value]![1]),
                                            ),
                                            //   Container(width: Get.width*0.1,height: 1.5,color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList()),
                              Text(
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .phone
                                      .value,
                                  style: TextStyle(
                                      color: mapTheme[
                                          Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value]![1]))
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                }),
                //
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Get.to(AddDevices()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add_box_outlined,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'افزودن دستگاه',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(Contacts()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.contacts,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'مدیران(مخاطبین)',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(Zoon()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'زون ها',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(Relleh()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.light,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'مدیریت رله',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(SettingDevices()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.settings,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'تنظیمات عمومی',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(SetHalfOn()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shield_outlined,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'تنظیم نیم فعاسازی',
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(EditSim()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.sim_card,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'تنظیم سیمکارت',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(Inqury()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.send_and_archive_rounded,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'استعلام',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(PasswordApp()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.password,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'رمزاپ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () => Get.to(PasswordDevices()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.password,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'رمز دستگاه',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
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
                                  final Telephony telephony =
                                      Telephony.instance;
                                  telephony.sendSms(
                                    to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                    message:
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*62#',
                                  );
                                  Get.back();
                                  Get.snackbar('اطلاعیه', 'پیامک ارسال شد');
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .startfifteensecends();
                                });
                          }
                        : () => Get.snackbar(
                            'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                    child: Container(
                        width: Get.width * 0.47,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.hearing,
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Colors.white,
                            ),
                            Text(
                              'شنود',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value ==
                                          'light'
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ],
                        )),
                  );
                }),
                InkWell(
                  onTap: () => Get.to(Help()),
                  child: Container(
                      width: Get.width * 0.47,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.help,
                            color: Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value ==
                                    'light'
                                ? Colors.black
                                : Colors.white,
                          ),
                          Text(
                            'راهنمایی',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                                .theme
                                                .value ==
                                            'light'
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
