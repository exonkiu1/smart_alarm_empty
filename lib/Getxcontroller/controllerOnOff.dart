// ignore: file_names
// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/Getxcontroller/controllerphoneinfo.dart';

class controlleronoff extends GetxController {
/*   @override
  void onInit() async {
    var prefs = await SharedPreferences.getInstance();
    atuOnMinute.value = prefs.getInt('minute1') ?? 20;
    atuOnHour.value = prefs.getInt('hour1') ?? 4;
    atuOffMinute.value = prefs.getInt('minute_1') ?? 20;
    atuOffHour.value = prefs.getInt('hour_1') ?? 4;
    print(
        'atuON ${atuOnHour.value}:${atuOnMinute.value},\n atuOFF ${atuOffHour.value}:${atuOffMinute.value}');

    super.onInit();
  } */

  RxBool on = false.obs;
  RxBool silent = false.obs;
  RxString moodcolor = 'blue'.obs;
  RxString opretorsim = 'ir'.obs;
  RxString TypeMicro = 'Lx1000'.obs;
  RxBool InquiryAll = false.obs;
  RxBool Inquiryzoon = false.obs;
  RxBool InquiryCharge = false.obs;
  RxBool Inquirycontect = false.obs;
  RxBool utoOnOff = false.obs;
  RxInt atuOnHour = 4.obs;
  RxInt atuOnMinute = 20.obs;
  RxInt atuOffHour = 4.obs;
  RxInt atuOffMinute = 20.obs;
  RxString valuepassword = 'بدون رمز'.obs;

  Map<String, List<Color>> Themecolor = {
    'dark': [
      Colors.grey[600]!, //بک گراند,رنگ دکمه
      Colors.grey[200]!, Colors.black87, //گردینت 0

      Colors.grey[300]!, //گردینت 1
      Colors.grey[400]!, //گردینت 2
      Colors.grey[500]!, //گردینت 3
      Colors.grey[600]!, //سایه سیاه
      Colors.white, //سایه سفید

      /*  Color(0xFF720A0A),
      // Color(0xFF5A0303),
      Color(0xFF1B1717),
      // Color(0xFF141111),
      Color(0xFFE7E7E7),
      Color(0xFFF3B1B1) */
    ],
    'purple': [
      // ignore: prefer_const_constructors
      Color(0xFF000000)
      /*  Color(0xFF3E035A),
      Color(0xFFE6DADA),
      Color(0xFFE96D6D),
      Color(0xFFB330CE) */
    ],
    'blue': [
      Color(0xFF049BB6),
      Color(0xFFE7EEF1),
      Color(0xFF414249),
      //Color(0xFF140129),
      Color(0xFFC1DAEB)
    ],
  };
}
