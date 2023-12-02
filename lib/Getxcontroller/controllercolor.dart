// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controllercolor extends GetxController {
  RxString mode = 'light'.obs;
}

Map<String, List> colorstheme = {
  'light': [
    Colors.grey[100], //بک گراند,رنگ دکمه
    Colors.grey[200]!, //گردینت 0
    Colors.grey[300]!, //گردینت 1
    Colors.grey[400]!, //گردینت 2
    Colors.grey[500]!, //گردینت 3
    Colors.grey[600]!, //سایه سیاه
    Colors.white, //سایه سفید
  ],
  'red': [
    Colors.deepOrange[50],
    Colors.red[200],
    Colors.red[200],
    Colors.red,
    Colors.red[200],
    Colors.red[200],
    Colors.red[100]
    /* Colors.indigo[50],
    Colors.indigo[100],
    Colors.teal[200],
    Colors.teal[300],
    Colors.blue[200],
    Colors.blue[100],
    Colors.white */
  ],
  'dark': [
    Colors.grey[600],
    Colors.grey[900]!,
    Colors.grey[800]!,
    Colors.grey[700]!,
    Colors.grey[600]!,
    Colors.grey[500]!,
    Colors.grey[800],
  ]
};
