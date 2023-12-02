// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class Inqury extends StatefulWidget {
  const Inqury({Key? key}) : super(key: key);

  @override
  State<Inqury> createState() => _InquryState();
}

class _InquryState extends State<Inqury> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'استعلامات دستگاه',
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
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return Visibility(
                visible:
                    Get.find<controlleronoff>(tag: 'secend').InquiryAll.value,
                child: CircularProgressIndicator(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                replacement: InkWell(
                  onTap: () =>
                      Get.find<controllerphoneinfo>(tag: 'secend').inquryall(),
                  child: Container(
                    width: Get.width * 0.3,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1]),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text(
                        'استعلام گرفتن',
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
            Container(
              width: Get.width * 0.65,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                                '${Get.find<controllerphoneinfo>(tag: 'secend').OnPhones == 'on' ? 'فعال' : Get.find<controllerphoneinfo>(tag: 'secend').OnPhones == 'off' ? 'غیر فعال' : Get.find<controllerphoneinfo>(tag: 'secend').OnPhones == 'silent' ? 'سایلنت' : 'نیمه فعال'}',
                                style: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ));
                          }),
                          Text('وضعیت',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///1
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').VoltAc.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('برق شهر',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///2
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Speaker.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('بلندگو',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///3
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Voltbatry.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('ولتاژباتری',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///4
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').StatusRelleh.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('رله 1',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///5
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('رله2',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///6
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').CountConuntect.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('تعداد مخاطبین',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///7
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Countremote.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('تعداد ریموت',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///8
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Anten.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('قدرت آنتن',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///9
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').StatusNetwork.value}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('وضعیت شبکه',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///10
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Statuszoons.value[0] == '1' ? 'بسته' : 'باز'}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('زون 1',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///11
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Statuszoons.value[1] == '1' ? 'بسته' : 'باز'}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('زون 2',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///12
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Statuszoons.value[2] == '1' ? 'بسته' : 'باز'}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('زون 3',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///13
                  Container(
                      width: Get.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(
                              '${Get.find<controllerphoneinfo>(tag: 'secend').Statuszoons.value[3] == '1' ? 'بسته' : 'باز'}',
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              ),
                            );
                          }),
                          Text('زون 4',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: mapTheme[
                                    Get.find<controllerphoneinfo>(tag: 'secend')
                                        .theme
                                        .value]![1],
                              )),
                        ],
                      )),

                  ///
                  ///14
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
