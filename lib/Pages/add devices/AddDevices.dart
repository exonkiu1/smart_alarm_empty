// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_alarm_empty/Pages/testpage.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/Pages/home%20page/HomePage.dart';
import '/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:call_log/call_log.dart';
import '../../main.dart';

class AddDevices extends StatefulWidget {
  const AddDevices({Key? key}) : super(key: key);

  @override
  State<AddDevices> createState() => _AddDevicesState();
}

class _AddDevicesState extends State<AddDevices> {
  late bool getlatestphone;

  @override
  void initState() {
    //getLatestCall();
    getlatestphone = false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'افزودن دستگاه',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.9,
              height: 3,
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
            ),
            Container(
              width: Get.width * 0.85,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller:
                    Get.find<controllerphoneinfo>(tag: 'secend').textnamephone,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                decoration: InputDecoration(
                    hintText: 'نام دستگاه',
                    //alignLabelWithHint: true,
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: Get.width * 0.85,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                keyboardType: TextInputType.phone,
                controller:
                    Get.find<controllerphoneinfo>(tag: 'secend').textphone,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                decoration: InputDecoration(
                    hintText: 'شماره تلفن دستگاه',
                    //alignLabelWithHint: true,
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                    border: InputBorder.none),
              ),
            ),
            /* Obx(() {
              return Visibility(
                replacement: CircularProgressIndicator(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                visible: Get.find<controllerphoneinfo>(tag: 'secend')
                    .show_getlatestPhone
                    .value,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width * 0.7,
                      child: CheckboxListTile(
                          title: Text(
                            'شماره آخرین تماس گرفته شده',
                            style: TextStyle(
                                fontSize: 10,
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1]),
                          ),
                          value: getlatestphone,
                          onChanged: (value) {
                            setState(() {
                              getlatestphone = value!;
                            });
                            if (value == true) {
                              String ccc = '0';
                              /*  Get.find<controllerphoneinfo>(tag: 'secend')
                                    .textphone
                                    .text = '0'; */

                              for (var i = 3;
                                  i < (copyphonenumber.length);
                                  i++) {
                                ccc = ccc + copyphonenumber[i];
                              }
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .textphone
                                  .text = ccc;
                            } else {
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .textphone
                                  .text = '';
                            }
                          }),
                    ),
                  ],
                ),
              );
            }), */
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => Get.find<controlleronoff>(tag: 'secend')
                      .opretorsim
                      .value = 'ir',
                  child: Obx(() {
                    return Container(
                        width: Get.width * 0.3,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![
                                Get.find<controlleronoff>(tag: 'secend')
                                            .opretorsim
                                            .value ==
                                        'ir'
                                    ? 1
                                    : 0],
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              width: 2,
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1],
                            )),
                        child: Center(
                          child: Obx(() {
                            return Text(
                              'ایرانسل',
                              style: TextStyle(
                                fontSize: 20,
                                color: mapTheme[Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .theme
                                        .value]![
                                    Get.find<controlleronoff>(tag: 'secend')
                                                .opretorsim
                                                .value ==
                                            'ir'
                                        ? 2
                                        : 1],
                              ),
                            );
                          }),
                        ));
                  }),
                ),
                InkWell(
                  onTap: () => Get.find<controlleronoff>(tag: 'secend')
                      .opretorsim
                      .value = 'ha',
                  child: Obx(() {
                    return Container(
                        width: Get.width * 0.3,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                        .opretorsim
                                        .value ==
                                    'ha'
                                ? mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1]
                                : null,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              width: 2,
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1],
                            )),
                        child: Center(
                          child: Text(
                            'همراه اول',
                            style: TextStyle(
                              fontSize: 20,
                              color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![
                                  Get.find<controlleronoff>(tag: 'secend')
                                              .opretorsim
                                              .value ==
                                          'ha'
                                      ? 2
                                      : 1],
                            ),
                          ),
                        ));
                  }),
                ),
                InkWell(
                  onTap: () => Get.find<controlleronoff>(tag: 'secend')
                      .opretorsim
                      .value = 'rl',
                  child: Obx(() {
                    return Container(
                        width: Get.width * 0.3,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Get.find<controlleronoff>(tag: 'secend')
                                        .opretorsim
                                        .value ==
                                    'rl'
                                ? mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1]
                                : null,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              width: 2,
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1],
                            )),
                        child: Center(
                          child: Text(
                            'رایتل',
                            style: TextStyle(
                              fontSize: 20,
                              color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![
                                  Get.find<controlleronoff>(tag: 'secend')
                                              .opretorsim
                                              .value ==
                                          'rl'
                                      ? 2
                                      : 1],
                            ),
                          ),
                        ));
                  }),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Get.defaultDialog(
                title: 'هشدار',
                middleText: 'از ساخت دستگاه مطمعن هستید؟',
                textConfirm: 'بله',
                onConfirm: () async {
                  Get.find<controllerphoneinfo>(tag: 'secend').adddevice();
                  Get.back();
                  Get.off(HomePage());
                  /*  Get.snackbar('توجه', 'لطفا با دزدگیر تماس بگیرید',
                      duration: Duration(seconds: 3));
                  await Future.delayed(Duration(seconds: 1));
                  final Uri smsLaunchUri = Uri(
                    scheme: 'tel',
                    path:
                        '${Get.find<controllerphoneinfo>(tag: 'secend').textphone.text}',
                    /* queryParameters: <String, String>{
    'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
  }, */
                  );
                  launchUrl(smsLaunchUri); */
                  /*  launch(
                      'tel:${Get.find<controllerphoneinfo>(tag: 'secend').textphone.text}'); */
                },
                confirmTextColor: mapTheme[
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![2],
                backgroundColor: mapTheme[
                    Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![2],
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
              ),
              child: Container(
                width: Get.width * 0.4,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                        width: 3),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    'ثبت دستگاه',
                    style: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
