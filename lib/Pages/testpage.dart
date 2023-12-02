import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_alarm_empty/Getxcontroller/controllerphoneinfo.dart';
import 'package:smart_alarm_empty/Getxcontroller/controllershow.dart';
import 'package:smart_alarm_empty/Pages/add%20devices/AddDevices.dart';
import 'package:smart_alarm_empty/Pages/contacts/Contacts.dart';
import 'package:smart_alarm_empty/Pages/edit%20sim/Editsim.dart';
import 'package:smart_alarm_empty/Pages/help/Help.dart';
import 'package:smart_alarm_empty/Pages/inqury/Inqury.dart';
import 'package:smart_alarm_empty/Pages/password%20app/PasswordApp.dart';
import 'package:smart_alarm_empty/Pages/password%20devices/PasswordDevices.dart';
import 'package:smart_alarm_empty/Pages/relleh/Relleh.dart';
import 'package:smart_alarm_empty/Pages/setting%20device/SettingDevices.dart';
import 'package:smart_alarm_empty/Pages/setting%20half%20on/SetHalfOn.dart';
import 'package:smart_alarm_empty/Pages/zoon/Zoon.dart';
import 'package:smart_alarm_empty/color.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 0, 26, 255),
      extendBody: true,
      bottomNavigationBar: bottom_nav_bar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Get.find<controllershow>(tag: 'secend')
                                      .show_setting
                                      .value ==
                                  true
                              ? Get.find<controllershow>(tag: 'secend')
                                  .show_setting
                                  .value = false
                              : Get.find<controllershow>(tag: 'secend')
                                  .show_setting
                                  .value = true,
                          child: Obx(() {
                            return Icon(
                              Get.find<controllershow>(tag: 'secend')
                                          .show_setting
                                          .value !=
                                      true
                                  ? Icons.settings
                                  : Icons.home,
                              color: mapTheme[
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .theme
                                      .value]![1],
                              size: 35,
                            );
                          }),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Obx(() {
                          return Visibility(
                              visible: Get.find<controllershow>(tag: 'secend')
                                  .show_setting
                                  .value,
                              child: theme_app());
                        }),
                      ],
                    )
                    //theme_app(),
                    ),
                /*  Container(
                    height: Get.height * 0.15,
                    child: Image.asset(
                      'image/logo.png',
                      gaplessPlayback: true,
                    )), */
                Obx(() {
                  return Visibility(
                    visible: Get.find<controllerphoneinfo>(tag: 'secend')
                                .lenghtmainpage
                                .value ==
                            0
                        ? false
                        : true,
                    child: Row(
                      children: [
                        name_device(),
                        Icon(
                          Icons.contacts_sharp,
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                          size: 20,
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
            Obx(() {
              return Visibility(
                visible:
                    Get.find<controllershow>(tag: 'secend').show_setting.value,
                child: Wrap(
                  spacing: Get.width * 0.05,
                  children: List.generate(
                    12,
                    (index) => SizedBox(
                      width: Get.width * 0.25,
                      //height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => index != 10
                                  ? Get.to(
                                      page_option[index],
                                    )
                                  : Get.find<controllerphoneinfo>(tag: 'secend')
                                      .hearing(),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                height: 75,
                                width: 75,
                                padding: EdgeInsets.all(15),
                                //
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 242, 219, 219),
                                    borderRadius: BorderRadius.circular(40)),
                                child: FittedBox(
                                  child: Center(
                                    child: Obx(() {
                                      return Icon(
                                        icon_option[index],
                                        color: mapTheme[
                                            Get.find<controllerphoneinfo>(
                                                    tag: 'secend')
                                                .theme
                                                .value]![1],
                                      );
                                    }),
                                  ),
                                ),
                              ),
                            ),
                            Obx(() {
                              return Text(
                                '${name_option[index]}',
                                style: TextStyle(
                                  color: mapTheme[Get.find<controllerphoneinfo>(
                                          tag: 'secend')
                                      .theme
                                      .value]![1],
                                ),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              );
                            }),
                          ],
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
            /*   Container(height: 50, child: Image.asset('image/main/on1.png')),
            //  Container(height: 86, child: Image.asset('image/main/on2.png')),
            //  Container(height: 86, child: Image.asset('image/main/off1.png')),
            Container(height: 50, child: Image.asset('image/main/off2.png')),
            //Container(height: 86, child: Image.asset('image/main/halfon1.png')),
            Container(height: 50, child: Image.asset('image/main/halfon2.png')),
            //Container(height: 86, child: Image.asset('image/main/silent1.png')),
            Container(height: 50, child: Image.asset('image/main/silent2.png')), */
          ],
        ),
      ),
    );
  }
}

class theme_app extends StatelessWidget {
  const theme_app({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Get.find<controllerphoneinfo>(tag: 'secend').theme.value == 'orange'
            ? Get.find<controllerphoneinfo>(tag: 'secend').theme.value = 'blue'
            : Get.find<controllerphoneinfo>(tag: 'secend').theme.value =
                'orange';
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString(
            'theme', Get.find<controllerphoneinfo>(tag: 'secend').theme.value);
      },
      child: Obx(() {
        return Icon(
          Icons.color_lens,
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          size: 40,
        );
      }),
    );
  }
}

class name_device extends StatelessWidget {
  const name_device({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Visibility(
        visible:
            Get.find<controllerphoneinfo>(tag: 'secend').lenghtmainpage.value >
                    1
                ? true
                : false,
        replacement: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                Get.find<controllerphoneinfo>(tag: 'secend').Name.value,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![1],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                Get.find<controllerphoneinfo>(tag: 'secend').phone.value,
                style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 10),
              ),
            ),
          ],
        ),
        child: Obx(() {
          return Container(
            width: Get.width * 0.4,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2.5,
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1]),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Column(
                children: [
                  DropdownButton(
                      dropdownColor: mapTheme[
                          Get.find<controllerphoneinfo>(tag: 'secend')
                              .theme
                              .value]![0],
                      elevation: 3,
                      underline: Container(
                        width: Get.width * 0.3,
                        height: 1.5,
                        color: mapTheme[
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![0],
                      ),
                      borderRadius: BorderRadius.circular(25),
                      onChanged: (value) {
                        for (var i = 0;
                            i <
                                Get.find<controllerphoneinfo>(tag: 'secend')
                                    .lenghtmainpage
                                    .value;
                            i++) {
                          if (Get.find<controllerphoneinfo>(tag: 'secend')
                                  .phoness[i]
                                  .Name ==
                              value) {
                            Get.find<controllerphoneinfo>(tag: 'secend')
                                .changepage(i);
                          }
                        }
                      },
                      value: Get.find<controllerphoneinfo>(tag: 'secend')
                          .Name
                          .value,
                      items: List.generate(
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .lenghtmainpage
                                  .value,
                              (index) =>
                                  Get.find<controllerphoneinfo>(tag: 'secend')
                                      .phoness[index]
                                      .Name)
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  value,
                                  style: TextStyle(
                                      color: mapTheme[
                                          Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value]![1]),
                                ),
                                //   Container(width: Get.width*0.1,height: 1.5,color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],),
                              ],
                            ),
                          ),
                        );
                      }).toList()),
                  Text(Get.find<controllerphoneinfo>(tag: 'secend').phone.value,
                      style: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1]))
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}

class bottom_nav_bar extends StatefulWidget {
  const bottom_nav_bar({
    super.key,
  });

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> ring_onoff;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    ring_onoff = Tween(begin: 77.0, end: 100.0).animate(_controller);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: Get.width,
            height: 140,
            // margin: EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //  crossAxisAlignment: CrossAxisAlignment.end,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () => Get.find<controllerphoneinfo>(tag: 'secend')
                          .onoff('on', 11),
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Container(
                                width: ring_onoff.value,
                                height: ring_onoff.value,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .OnPhones
                                                  .value ==
                                              'on'
                                          ? mapTheme[
                                              Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value]![1]
                                          : Color.fromARGB(0, 0, 26, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Container(
                                    width: 75, height: 75,
                                    child: Center(
                                        child: Icon(
                                      Icons.lock,
                                      size: 60,
                                      color: const Color.fromARGB(
                                          255, 242, 219, 219),
                                    )),
                                    //  padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: mapTheme[
                                          Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value]![1],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'فعال',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.find<controllerphoneinfo>(tag: 'secend')
                          .onoff('off', 10),
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Container(
                                width: ring_onoff.value,
                                height: ring_onoff.value,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .OnPhones
                                                  .value ==
                                              'off'
                                          ? mapTheme[
                                              Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value]![1]
                                          : Color.fromARGB(0, 0, 26, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Container(
                                    width: 75, height: 75,
                                    child: Center(
                                        child: Icon(
                                      Icons.lock_open,
                                      size: 60,
                                      color: const Color.fromARGB(
                                          255, 242, 219, 219),
                                    )),
                                    //  padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: mapTheme[
                                          Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value]![1],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'غیرفعال',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.find<controllerphoneinfo>(tag: 'secend')
                          .onoff('halfon', 13),
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Container(
                                width: ring_onoff.value,
                                height: ring_onoff.value,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .OnPhones
                                                  .value ==
                                              'halfon'
                                          ? mapTheme[
                                              Get.find<controllerphoneinfo>(
                                                      tag: 'secend')
                                                  .theme
                                                  .value]![1]
                                          : Color.fromARGB(0, 0, 26, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Container(
                                    width: 75, height: 75,
                                    child: Center(
                                        child: Icon(
                                      Icons.shield,
                                      size: 60,
                                      color: const Color.fromARGB(
                                          255, 242, 219, 219),
                                    )),
                                    //  padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: mapTheme[
                                          Get.find<controllerphoneinfo>(
                                                  tag: 'secend')
                                              .theme
                                              .value]![1],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'نیمه فعال',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

List<String> name_option = [
  'افزودن دستگاه',
  'مخاطبین',
  'زون ها',
  'مدیریت رله',
  'تنظیمات عمومی',
  'تنظیم نیمه فعالسازی',
  'تنظیم سیمکارت',
  'استعلام',
  'رمزاپ',
  'رمز دستگاه',
  'شنود',
  'راهنمایی',
];
List<Widget> page_option = [
  AddDevices(),
  Contacts(),
  Zoon(),
  Relleh(),
  SettingDevices(),
  SetHalfOn(),
  EditSim(),
  Inqury(),
  PasswordApp(),
  PasswordDevices(),
  PasswordApp(),
  Help(),
];
List<IconData> icon_option = [
  Icons.add_box_outlined,
  Icons.contacts,
  Icons.remove_red_eye,
  Icons.light,
  Icons.settings,
  Icons.shield_outlined,
  Icons.sim_card,
  Icons.send_and_archive_rounded,
  Icons.password,
  Icons.password,
  Icons.hearing,
  Icons.help,
];
