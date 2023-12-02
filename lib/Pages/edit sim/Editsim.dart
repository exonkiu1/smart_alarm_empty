// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/Pages/edit%20sim/funcsim.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import '../../main.dart';

class EditSim extends StatefulWidget {
  const EditSim({Key? key}) : super(key: key);

  @override
  State<EditSim> createState() => _EditSimState();
}

class _EditSimState extends State<EditSim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'تنظیمات و تغییرات سیمکارت و نام کاربری',
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
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width * 0.9,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                )),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: Obx(() {
                      return LiquidCircularProgressIndicator(
                        value: Get.find<controllerphoneinfo>(tag: 'secend')
                                    .Charge
                                    .value >
                                (Get.find<controllerphoneinfo>(tag: 'secend')
                                        .Chargemin
                                        .value *
                                    10)
                            ? (Get.find<controllerphoneinfo>(tag: 'secend')
                                        .Charge
                                        .value -
                                    (Get.find<controllerphoneinfo>(tag: 'secend')
                                            .Chargemin
                                            .value *
                                        10)) /
                                ((Get.find<controllerphoneinfo>(tag: 'secend')
                                            .Chargemax
                                            .value *
                                        10) -
                                    (Get.find<controllerphoneinfo>(
                                                tag: 'secend')
                                            .Chargemin
                                            .value *
                                        10)) *
                                100
                            : 0, // Defaults to 0.5.
                        valueColor: AlwaysStoppedAnimation(
                          mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                        ), // Defaults to the current Theme's accentColor.
                        backgroundColor: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![
                            0], // Defaults to the current Theme's backgroundColor.
                        borderColor: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                        borderWidth: 2.0,
                        direction: Axis
                            .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                        center: Icon(Icons.monetization_on_outlined,
                            color: Colors.green),
                      );
                    }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'میزان اعتبار',
                        style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        ),
                      ),
                      Obx(() {
                        return Text(
                          '${Get.find<controllerphoneinfo>(tag: 'secend').Charge.value}تومان',
                          style: TextStyle(
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1]),
                        );
                      }),
                    ],
                  ),
                  Obx(() {
                    return Visibility(
                      visible: Get.find<controlleronoff>(tag: 'secend')
                          .InquiryCharge
                          .value,
                      child: CircularProgressIndicator(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                      ),
                      replacement: Obx(() {
                        return InkWell(
                          onTap: () =>
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .inqurycharge(),
                          child: Container(
                            width: Get.width * 0.3,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                'استعلام شارژ',
                                style: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  })
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() {
            return InkWell(
              onTap: () =>
                  Get.find<controllerphoneinfo>(tag: 'secend').chargesim(),
              child: Container(
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'شارژ اعتبار سیمکارت',
                      style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1]),
                    ),
                  ),
                ),
              ),
            );
          }),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => set_capsol(),
            child: Container(
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'تنظیم بازه کپسول شارژ',
                    style: TextStyle(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => delete_device(),
            child: Container(
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'حذف دستگاه فعلی',
                    style: TextStyle(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => Get.defaultDialog(
                title: 'هشدار',
                middleText: 'از ریست دستگاه مطمعن هستید؟',
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
                onConfirm: () {
                  Get.find<controllerphoneinfo>(tag: 'secend').resetphone;
                  Get.back();
                }),
            child: Container(
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'ریست تنظیمات نرم افزار',
                    style: TextStyle(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              TextEditingController controller2 = TextEditingController();
              Get.defaultDialog(
                  backgroundColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![0],
                  title: 'تغییر  نام',
                  titleStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  //middleTextStyle: textstyle_inqury,
                  //  middleText: 'پیامک فرستاده شود؟',
                  content: Container(
                    width: Get.width * 0.6,
                    child: TextField(
                      autofocus: true,
                      controller: controller2,
                    ),
                  ),
                  confirmTextColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![0],
                  buttonColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![1],
                  textConfirm: 'تغییر',
                  onConfirm: () {
                    Get.find<controllerphoneinfo>(tag: 'secend').Name.value =
                        controller2.text;
                    Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
                    Get.back();
                    Get.snackbar('اطلاعیه',
                        'تغییرات مورد نظر اعمال شد لطفا برنامه را یکبار کامل ببندید دوباره وارد شوید');
                  });
            },
            child: Container(
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'تغییر نام دستگاه',
                    style: TextStyle(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              TextEditingController controller2 = TextEditingController();
              Get.defaultDialog(
                  backgroundColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![0],
                  title: 'تغییر  شماره تلفن',
                  titleStyle: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  //middleTextStyle: textstyle_inqury,
                  //  middleText: 'پیامک فرستاده شود؟',
                  content: Container(
                    width: Get.width * 0.6,
                    child: TextField(
                      autofocus: true,
                      controller: controller2,
                    ),
                  ),
                  confirmTextColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![0],
                  buttonColor: mapTheme[
                      Get.find<controllerphoneinfo>(tag: 'secend')
                          .theme
                          .value]![1],
                  textConfirm: 'تغییر',
                  onConfirm: () {
                    Get.find<controllerphoneinfo>(tag: 'secend').phone.value =
                        controller2.text;
                    Get.find<controllerphoneinfo>(tag: 'secend').updatePhone();
                    Get.back();
                    Get.snackbar('اطلاعیه',
                        'تغییرات مورد نظر اعمال شد لطفا برنامه را یکبار کامل ببندید دوباره وارد شوید');
                  });
            },
            child: Container(
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'تغییر شماره تلفن دستگاه',
                    style: TextStyle(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1]),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
