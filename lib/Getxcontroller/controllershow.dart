import 'package:flutter/material.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
//import 'package:lux_security2/Getxcontroller/controllercolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';

class controllershow extends GetxController {
  @override
  void onInit() async {
    showf = List.generate(15, (index) => true.obs);
    getbool();
    // TODO: implement onInit
    super.onInit();
  }

  RxBool show_setting = false.obs;
  late List<RxBool> showf;
  List<String> nameshow = [
    'voltac',
    'speaker',
    'Countremote',
    'Anten',
    'CountConuntect',
    'StatusNetwork',
    'Voltbatry',
    'StatusRelleh',
    'silent',
    'halfon',
    'listtener',
    'zon1',
    'zon2',
    'zon3',
    'zon4',
  ];
  List<String> name1show = [
    'سایلنت',
    'نیمه فعال',
    'شنود',
    'برق شهر',
    'بلندگو',
    'تعداد ریموت',
    'آنتن',
    'تعداد مخاطب',
    'وضعیت شبکه ',
    'ولتاژ باطری',
    'وضعیت رله 1',
    'زون1',
    'زون2',
    'زون3',
    'زون4',
  ];
  void getbool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var i = 0; i < 15; i++) {
      showf[i].value = prefs.getBool(name1show[i]) ?? true;
      ;
    }
  }

  changeshow(int index, String name2, bool value) async {
    showf[index].value = value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(name2, value);
  }
}
