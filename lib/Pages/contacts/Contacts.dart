// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'مدیران(مخاطبان)',
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
                visible: Get.find<controlleronoff>(tag: 'secend')
                    .Inquirycontect
                    .value,
                child: CircularProgressIndicator(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                replacement: InkWell(
                  onTap: () => Get.find<controllerphoneinfo>(tag: 'secend')
                      .inqurycontacts(),
                  child: Center(
                    child: Container(
                      width: Get.width * 0.35,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1],
                              width: 3)),
                      child: Center(
                        child: Text(
                          'استعلام مدیران',
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
                    List.generate(10, (index) => WidgetContacts(index: index)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WidgetContacts extends StatelessWidget {
  const WidgetContacts({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 15),
        width: Get.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            )),
        child: Column(
          children: [
            /* Container(
              width: Get.width * 0.8,
              child: TextField(
                controller: Get.find<controllerphoneinfo>(tag: 'secend')
                    .namecontect[index],
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![0],
                      ),
                    ),
                    hintText: 'نام مدیر',
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    )),
              ),
            ), */
            Container(
              width: Get.width * 0.8,
              child: TextField(
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
                controller: Get.find<controllerphoneinfo>(tag: 'secend')
                    .phonecontect[index],
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![0],
                      ),
                    ),
                    hintText:
                        index <= 0 ? 'شماره موبایل مدیر' : 'شماره موبایل مخاطب',
                    hintStyle: TextStyle(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![1],
                    )),
              ),
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
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .contact1[index] = ' ';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .namecontect[index]
                                    .text = '';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .phonecontect[index]
                                    .text = '';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .dropdownValues[index] = 'A';
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*30*${index + 1}*D#',
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
                SizedBox(
                  width: 50,
                ),
                Obx(() {
                  return DropdownButton(
                    dropdownColor: mapTheme[
                        Get.find<controllerphoneinfo>(tag: 'secend')
                            .theme
                            .value]![0],
                    underline: Divider(
                      color: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![0],
                    ),
                    value: Get.find<controllerphoneinfo>(tag: 'secend')
                                .dropdownValues[index] ==
                            ''
                        ? index == 0
                            ? 'A'
                            : 'C'
                        : Get.find<controllerphoneinfo>(tag: 'secend')
                            .dropdownValues[index],
                    onChanged: (String? value) =>
                        Get.find<controllerphoneinfo>(tag: 'secend')
                            .dropdownValues[index] = value!,
                    items: <String>['A', 'B', 'C', 'D']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 20,
                            color: mapTheme[
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .theme
                                    .value]![1],
                            //fontFamily: 'Paeez'
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }),
                SizedBox(
                  width: 30,
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
                              onConfirm: () {
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                        .contact1[index] =
                                    '${Get.find<controllerphoneinfo>(tag: 'secend').namecontect[index].text}+${Get.find<controllerphoneinfo>(tag: 'secend').phonecontect[index].text}+${Get.find<controllerphoneinfo>(tag: 'secend').dropdownValues[index]}';

                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .updatePhone();
                                final Telephony telephony = Telephony.instance;
                                telephony.sendSms(
                                  to: "+98${Get.find<controllerphoneinfo>(tag: 'secend').phone.value}",
                                  message:
                                      '*${Get.find<controllerphoneinfo>(tag: 'secend').Password.value}*31*${index + 1}*${Get.find<controllerphoneinfo>(tag: 'secend').phonecontect[index].text}${Get.find<controllerphoneinfo>(tag: 'secend').dropdownValues[index]}#',
                                );
                                Get.back();
                                Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .startfifteensecends();
                              });
                        }
                      : () => Get.snackbar(
                          'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                        )),
                    child: Center(
                      child: Text(
                        index <= 0 ? 'ثبت مدیر' : 'ثبت مخاطب',
                        style: TextStyle(
                          fontSize: 17,
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                          //fontFamily: 'Paeez'
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
