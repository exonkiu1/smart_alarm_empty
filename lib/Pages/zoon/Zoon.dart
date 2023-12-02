// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class Zoon extends StatefulWidget {
  const Zoon({Key? key}) : super(key: key);

  @override
  State<Zoon> createState() => _ZoonState();
}

class _ZoonState extends State<Zoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'حالت زون ها',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return Visibility(
                visible:
                    Get.find<controlleronoff>(tag: 'secend').Inquiryzoon.value,
                child: CircularProgressIndicator(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                replacement: InkWell(
                  onTap: () => Get.find<controllerphoneinfo>(tag: 'secend')
                      .inquryzoons(),
                  child: Container(
                    width: Get.width * 0.35,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text(
                        'استعلام زون',
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
              );
            }),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List.generate(15, (index) => WidgetZoon(index: index)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WidgetZoon extends StatelessWidget {
  const WidgetZoon({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
            width: 2,
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1]),
      ),
      child: Column(
        children: [
          Text(
            '${index + 1}:زون',
            style: TextStyle(
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              final Telephony telephony = Telephony.instance;
                              telephony.sendSms(
                                to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                message:
                                    '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42* ${index + 1}*9#',
                              );
                              Get.back();

                              Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .startfifteensecends();
                            });
                      }
                    : () => Get.snackbar(
                        'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                child: Icon(
                  Icons.delete,
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
              ),
              Obx(() {
                return DropdownButton(
                  dropdownColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![0],
                  value: Get.find<controllerphoneinfo>(tag: 'secend')
                      .zonesdropdown[index],
                  onChanged: Get.find<controllerphoneinfo>(tag: 'secend')
                              .fifteensecends
                              .value >=
                          15
                      ? (String? newValue) async {
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
                              onConfirm: () {
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .zonesdropdown[index] = newValue!;

                                List<String> type = [
                                  'Normaly close',
                                  'Normaly Open',
                                  'دینگ دانگ',
                                  '24 ساعت',
                                  'حفاظت',
                                ];

                                for (var i = 0; i < type.length; i++) {
                                  if (Get.find<controllerphoneinfo>(
                                              tag: 'secend')
                                          .zonesdropdown[index] ==
                                      type[i]) {
                                    List<String> copyzone =
                                        Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .Zone
                                            .value
                                            .split(' ');
                                    copyzone[index] = '$i';

                                    print(copyzone);
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .Zone
                                        .value = '';
                                    for (var i = 0; i < copyzone.length; i++) {
                                      Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .Zone
                                              .value =
                                          Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .Zone
                                                  .value +
                                              copyzone[i] +
                                              (i == 14 ? '' : ' ');

                                      print(i);
                                    }
                                    i == 1 ? i = 5 : null;
                                    i == 0 ? i = 1 : null;

                                    final Telephony telephony =
                                        Telephony.instance;
                                    telephony.sendSms(
                                      to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                      message:
                                          '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${index + 1}*${i}#',
                                    );
                                    print(
                                        '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*42*${index + 1}*${i}#');
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .updatePhone();
                                    print(Get.find<controllerphoneinfo>(
                                            tag: 'secend')
                                        .Zone
                                        .value);
                                    Get.back();
                                    Get.snackbar('اطلاعیه', 'پیامک ارسال شد');
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .startfifteensecends();
                                  }
                                }
                              });
                        }
                      : (String? newValue) => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  items: <String>[
                    'Normaly close',
                    'Normaly Open',
                    'دینگ دانگ',
                    '24 ساعت',
                    'حفاظت',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                    );
                  }).toList(),
                );
              }),
            ],
          )
        ],
      ),
    );
  }
}
