// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class SetHalfOn extends StatefulWidget {
  const SetHalfOn({Key? key}) : super(key: key);

  @override
  State<SetHalfOn> createState() => _SetHalfOnState();
}

class _SetHalfOnState extends State<SetHalfOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'تنظیمات پیشرفته نیمه فعالسازی',
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
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
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
                            String copy = '';
                            for (var i = 0; i < 9; i++) {
                              copy = copy +
                                  (Get.find<controllerphoneinfo>(tag: 'secend')
                                              .eyezoon[i] ==
                                          true
                                      ? '1'
                                      : '0');
                            }
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .eyezoonindex
                                .value = copy;
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .updatePhone();
                            final Telephony telephony = Telephony.instance;
                            telephony.sendSms(
                              to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                              message:
                                  '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*14*$copy#',
                            );
                            Get.back();
                            await Get.find<controllerphoneinfo>(tag: 'secend')
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
                padding: EdgeInsets.all(3),
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
                    'اعمال کردن',
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
            SizedBox(
              height: 20,
            ),
            Wrap(
                children:
                    List.generate(15, (index) => widgethalfon(index: index)))
          ],
        ),
      )),
    );
  }
}

class widgethalfon extends StatelessWidget {
  const widgethalfon({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.3,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
              width: 3)),
      child: Column(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(100),
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![0],
                ),
              ),
            ),
          ),
          Obx(() {
            return Text(
              Get.find<controllerphoneinfo>(tag: 'secend')
                  .nameZoon[index]
                  .value,
              style: TextStyle(
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
              ),
            );
          }),
          Obx(() {
            return Checkbox(
              value:
                  Get.find<controllerphoneinfo>(tag: 'secend').eyezoon[index],
              onChanged: (value) {
                Get.find<controllerphoneinfo>(tag: 'secend').eyezoon[index] =
                    value!;
              },
              activeColor: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
              checkColor: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
            );
          }),
          InkWell(
            onTap: () {
              TextEditingController controllerchangename =
                  TextEditingController();
              Get.defaultDialog(
                  title: 'تغییر نام',
                  backgroundColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![0],
                  content: Container(
                    width: Get.width * 0.7,
                    child: Column(
                      children: [
                        TextField(
                          controller: controllerchangename,
                          autofocus: true,
                          style: TextStyle(
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1],
                              borderRadius: BorderRadius.circular(50)),
                          child: InkWell(
                            onTap: () {
                              print(
                                  'change name${controllerchangename.text}:${index}');
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .nameZoon[index]
                                  .value = controllerchangename.text;
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .updatePhone();
                              Get.back();
                            },
                            child: Obx(() {
                              return Text(
                                'تغییر',
                                style: TextStyle(
                                    color: mapTheme[
                                        Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .theme
                                            .value]![0]),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  titleStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![0]));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
                child: Center(
                  child: Text(
                    'تغییر نام',
                    style: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
