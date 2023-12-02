// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

void timerelleh1() {
  Get.defaultDialog(
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    title: 'زمان درب بازکن رله 1',
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'زمان هارا بصورت دو رقمی وارد کنید مانند:02,01,..',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          TextField(
            autofocus: true,
            controller:
                Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[0],
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
                hintText:
                    'ساعت${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]} ',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          TextField(
            autofocus: true,
            controller:
                Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[1],
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
                hintText:
                    'دقیقه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]} ',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          TextField(
            controller:
                Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[2],
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
                hintText:
                    'ثانیه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]} ',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () {
              if (Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[2]
                          .text
                          .length ==
                      2 &&
                  Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[1]
                          .text
                          .length ==
                      2 &&
                  Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[0]
                          .text
                          .length ==
                      2) {
                Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1] =
                    '${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[2].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[1].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[0].text}';
                Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
                Get.snackbar('تایید', 'تغییرات اعمال شد');
              } else {
                Get.snackbar('خطا', 'دو رقمی لطفا وارد کنید');
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
void timerelleh2() {
  Get.defaultDialog(
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    title: 'زمان درب بازکن رله 2',
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          Text(
            'زمان هارا بصورت دو رقمی وارد کنید مانند:02,01,..',
            style: TextStyle(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
          ),
          TextField(
            autofocus: true,
            controller:
                Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[0],
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
                hintText:
                    'ساعت${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[2]} ',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          TextField(
            autofocus: true,
            controller:
                Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[1],
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
                hintText:
                    'دقیقه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[1]} ',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          TextField(
            controller:
                Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[2],
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
                hintText:
                    'ثانیه${Get.find<controllerphoneinfo>(tag: 'secend').Relehs[1].split(',')[0]} ',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () {
              if (Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[2]
                          .text
                          .length ==
                      2 &&
                  Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[1]
                          .text
                          .length ==
                      2 &&
                  Get.find<controllerphoneinfo>(tag: 'secend')
                          .Rellehtime[0]
                          .text
                          .length ==
                      2) {
                Get.find<controllerphoneinfo>(tag: 'secend').Relehs[3] =
                    '${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[5].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[4].text},${Get.find<controllerphoneinfo>(tag: 'secend').Rellehtime[3].text}';
                Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
                Get.snackbar('تایید', 'تغییرات اعمال شد');
              } else {
                Get.snackbar('خطا', 'دو رقمی لطفا وارد کنید');
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
void namerelleh() {
  TextEditingController namerelleh1 = TextEditingController(),
      namerelleh2 = TextEditingController();
  Get.defaultDialog(
    backgroundColor:
        mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
    title: 'ویرایش نام رله',
    titleStyle: TextStyle(
      color: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
    ),
    content: Container(
      width: Get.width * 0.7,
      child: Column(
        children: [
          TextField(
            autofocus: true,
            controller: namerelleh1,
            // keyboardType: TextInputType.phone,
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
                hintText: 'نام رله 1',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.find<controllerphoneinfo>(tag: 'secend').Relehs[0] =
                  namerelleh1.text;
              Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
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
          TextField(
            controller: namerelleh2,
            //   keyboardType: TextInputType.phone,
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
                hintText: 'نام رله 2',
                hintStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 16)),
          ),
          InkWell(
            onTap: () async {
              Get.find<controllerphoneinfo>(tag: 'secend').Relehs[2] =
                  namerelleh2.text;
              Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
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
////
///
///
///
///

void settingrelleh() {
  List<String> typeReleh = [
    'دینگ دانگ',
    'تحریک زون معمولی',
    'زون جاسوسی',
    '24 ساعت',
    'قطع برق',
    'حالت سایلنت',
  ];
  Get.defaultDialog(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      title: 'نوع تحریک رله 1',
      titleStyle: TextStyle(
        color: mapTheme[
            Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
      ),
      content: Container(
        width: Get.width * 0.7,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'یکی از گزینه های زیر را برای تعیین نوع تحریک رله انتخاب کنید',
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
              ),
              Text(
                'اگر با این بخش آشنایی ندارید به هیچ عنوان تغییری اعمال نکنید!',
                style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: List.generate(typeReleh.length, (index) {
                  return InkWell(
                    onTap: () {
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .TypeRelleh
                          .value = index;
                      final Telephony telephony = Telephony.instance;
                      telephony.sendSms(
                        to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                        message:
                            '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*29*1*${index + 1}#',
                      );
                      Get.back();
                    },
                    child: Container(
                      padding: EdgeInsets.all(2.0),
                      margin: EdgeInsets.all(2.0),
                      width: Get.width * 0.6,
                      decoration: BoxDecoration(
                          color: Get.find<controllerphoneinfo>(tag: 'secend')
                                      .TypeRelleh
                                      .value ==
                                  index
                              ? mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]
                              : mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![0],
                          border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          typeReleh[index],
                          style: TextStyle(
                              color:
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                              .TypeRelleh
                                              .value ==
                                          index
                                      ? mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![0]
                                      : mapTheme[Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .theme
                                          .value]![1],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ));
}
