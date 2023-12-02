// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'dart:async';

import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:smart_alarm_empty/Pages/testpage.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/Pages/home%20page/HomePage.dart';
import '/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

String storedPasscode = '1234';
Future<void> getLatestCall() async {
  // دریافت لاگ تماس‌ها
  Iterable<CallLogEntry> entries = await CallLog.get();

  // مرتب سازی لاگ بر اساس زمان تماس (صعودی)
  List<CallLogEntry> sortedEntries = entries.toList()
    ..sort((a, b) => b.timestamp!.compareTo(num.parse('${a.timestamp}')));

  // در صورت وجود تماس‌های در لاگ
  if (sortedEntries.isNotEmpty) {
    CallLogEntry latestCall = sortedEntries.first;

    // نوع سیم‌کارت مورد استفاده برای تماس
    String? simCard = latestCall.simDisplayName;

    // شماره تلفن تماس گرفته شده
    String? phoneNumber = latestCall.number;
    copyphonenumber = phoneNumber!;
    await Future.delayed(Duration(seconds: 1));
    if (Get.find<controllerphoneinfo>(tag: 'secend').lenghtmainpage.value ==
        0) {
      String ccc = '';
      /*  Get.find<controllerphoneinfo>(tag: 'secend')
                                    .textphone
                                    .text = '0'; */
      if (copyphonenumber[0] == '0') {
        Get.find<controllerphoneinfo>(tag: 'secend').textphone.text =
            copyphonenumber;
        ccc = copyphonenumber;
      } else {
        ccc = '0';
        for (var i = 3; i < (copyphonenumber.length); i++) {
          ccc = ccc + copyphonenumber[i];
        }
        Get.find<controllerphoneinfo>(tag: 'secend').textphone.text = ccc;
      }

      Get.find<controllerphoneinfo>(tag: 'secend').textnamephone.text =
          'دستگاه مرکزی ';
      List<String> irancell = [
        '901',
        '902',
        '903',
        '904',
        '905',
        '935',
        '936',
        '937',
        '938',
        '939'
      ];
      List<String> hamraheaval = [
        '910',
        '911',
        '912',
        '913',
        '914',
        '915',
        '916',
        '917',
        '918',
        '919',
        '990',
        '991',
        '992',
        '993'
      ];
      List<String> rightel = ['921', '922', '923'];
      for (var item in irancell) {
        if (item == (ccc[1] + ccc[2] + ccc[3])) {
          Get.find<controlleronoff>(tag: 'secend').opretorsim.value = 'ir';
          //  Get.snackbar('ایرانسل', 'ایرانسل');
        }
      }
      for (var item in hamraheaval) {
        if (item == (ccc[1] + ccc[2] + ccc[3])) {
          Get.find<controlleronoff>(tag: 'secend').opretorsim.value = 'ha';
          //  Get.snackbar('همراه اول', 'همراه اول');
        }
      }
      for (var item in rightel) {
        if (item == (ccc[1] + ccc[2] + ccc[3])) {
          Get.find<controlleronoff>(tag: 'secend').opretorsim.value = 'rl';
          //  Get.snackbar('رایتل', 'رایتل');
        }
      }
      Get.find<controllerphoneinfo>(tag: 'secend').adddevice();
      Get.snackbar(
          'توجه', 'دستگاهی با آخرین شماره ای که شما تماس گرفته اید ساخته شد',
          duration: Duration(seconds: 7));
    }
    Get.find<controllerphoneinfo>(tag: 'secend').show_getlatestPhone.value =
        true;
    //print('Latest call: $phoneNumber (SIM card: $simCard)');
  } else {
    Get.find<controllerphoneinfo>(tag: 'secend').show_getlatestPhone.value =
        false;
    //print('No calls found in call log.');
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  String texttilte = 'رمز خود را وارد کنید';
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  bool isAuthenticated = false;
  @override
  void initState() {
    //  getLatestCall();
    //  gotomainpage();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> fetchNetworkCall() async {
      print('SplashScreen');
      SharedPreferences prefs = await SharedPreferences.getInstance();

      String lock = prefs.getString('valuepassword') ?? 'بدون رمز';
      bool lock2 = true;
      Get.find<controlleronoff>(tag: 'secend').valuepassword.value =
          prefs.getString('valuepassword') ?? 'بدون رمز';

      Get.find<controllerphoneinfo>(tag: 'secend').theme.value =
          prefs.getString('theme') ?? 'orange';
      /*      if (Get.find<controlleronoff>(tag: 'secend').theme.value) {
        print('GOToMainPage1');
      } else {
        print('GOToMainPage2');
      } */
      Get.find<controllerphoneinfo>(tag: 'secend').smartOn.value =
          prefs.getBool('smartOn') ?? false;
      Get.find<controllerphoneinfo>(tag: 'secend').smartOff.value =
          prefs.getBool('smartOff') ?? false;
      Get.find<controllerphoneinfo>(tag: 'secend').smart_releh10.value =
          prefs.getBool('smart_releh10') ?? false;
      Get.find<controllerphoneinfo>(tag: 'secend').smart_releh11.value =
          prefs.getBool('smart_releh11') ?? false;
      storedPasscode = prefs.getString('password') ?? '0000';
      // lock = true;
      if (lock == 'اثر انگشت') {
        gotomainpage();
        // Get.off(HomePage());
        print('اثر انگشت');
      }
      if (lock == 'رمز عبور') {
        ehsan();
        print(lock);
      }
      if (lock == 'بدون رمز') {
        print(lock);

        Get.off(() => HomePage());
      }

      return lock2;
    }

    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            FutureBuilder<bool>(
                future: fetchNetworkCall(), // async work
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data == true) {
                      return Container(
                          height: Get.height,
                          width: Get.width,
                          decoration: BoxDecoration(
                              /*    gradient: LinearGradient(
                            //begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              theme[Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                              theme[Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![0],
                              //colorred,
                            ],
                          ) */
                              ),
                          child: Column(
                            children: [
                              CircularProgressIndicator(),
                              Container(
                                width: Get.width * 0.7,
                                height: Get.width * 0.7,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            Get.find<controllerphoneinfo>(
                                                            tag: 'secend')
                                                        .theme
                                                        .value !=
                                                    'red'
                                                ? 'image/logo.png'
                                                : 'image/logo.png'))),
                              ),
                              //  _defaultLockScreenButton(context),
                            ],
                          ));
                    } else {
                      return Container(
                          height: Get.height,
                          width: Get.width,
                          decoration: BoxDecoration(
                              /* gradient: LinearGradient(
                            //begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              theme[Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                              theme[Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![0],
                              //colorred,
                            ],
                          ) */
                              ),
                          child: Column(
                            children: [
                              CircularProgressIndicator(),
                              Container(
                                width: Get.width * 0.7,
                                height: Get.width * 0.7,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            Get.find<controllerphoneinfo>(
                                                            tag: 'secend')
                                                        .theme
                                                        .value !=
                                                    'red'
                                                ? 'image/logo.png'
                                                : 'image/logo.png'))),
                              ),
                            ],
                          ));
                    }
                  } else {
                    return Container(
                        height: Get.height,
                        width: Get.width,
                        decoration: BoxDecoration(
                            /*    gradient: LinearGradient(
                          //begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            theme[Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![1],
                            theme[Get.find<controllerphoneinfo>(tag: 'secend')
                                .theme
                                .value]![0],
                            //colorred,
                          ],
                        ) */
                            ),
                        child: Column(
                          children: [
                            CircularProgressIndicator(),
                            Container(
                              width: Get.width * 0.7,
                              height: Get.width * 0.7,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Get.find<controllerphoneinfo>(
                                                          tag: 'secend')
                                                      .theme
                                                      .value !=
                                                  'red'
                                              ? 'image/logo.png'
                                              : 'image/logo.png'))),
                            ),
                          ],
                        ));
                  }
                }),
          ],
        ),
      ),
    );
  }

  void gotomainpage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
/*     Get.find<controlleronoff>(tag: 'secend').moodcolor.value =
          prefs.getBool('darktheme') == true ? 'dark' : 'purple'; */

    print(await prefs.getBool('OnPassword'));

    final LocalAuthentication auth = LocalAuthentication();
    // ···
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;

    if (canAuthenticateWithBiometrics == true) {
      bool authenticated = false;
      /*  try {
        // ignore: deprecated_member_use
        authenticated = await auth.authenticateWithBiometrics(
            localizedReason: 'Scan your fingerprint to authenticate',
            useErrorDialogs: true,
            stickyAuth: true);
      } catch (e) {
        print(e);
      }

      if (authenticated) {
        await Future.delayed(Duration(
          seconds: 1,
        ));
        Get.off(() => HomePage());
      }
      //Yess All OK
      else {
        Get.snackbar('خطا', 'دوباره امتحان کنید');
      } */
    } else {
      await Future.delayed(
          Duration(
            seconds: 1,
          ), () {
        Get.off(() => HomePage());
      });
    }
  }

  void ehsan() {
    _showLockScreen(
      context,
      opaque: false,
      cancelButton: Text(
        'Cancel',
        style: const TextStyle(fontSize: 16, color: Colors.white),
        semanticsLabel: 'Cancel',
      ),
    );
  }

  _customColorsLockScreenButton(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      child: Text('Open Custom Lock Screen'),
      onPressed: () {
        _showLockScreen(context,
            opaque: false,
            circleUIConfig: CircleUIConfig(
                borderColor: Colors.blue,
                fillColor: Colors.blue,
                circleSize: 30),
            keyboardUIConfig: KeyboardUIConfig(
                digitBorderWidth: 2, primaryColor: Colors.blue),
            cancelButton: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            digits: ['一', '二', '三', '四', '五', '六', '七', '八', '九', '零']);
      },
    );
  }

  _showLockScreen(
    BuildContext context, {
    required bool opaque,
    CircleUIConfig? circleUIConfig,
    KeyboardUIConfig? keyboardUIConfig,
    required Widget cancelButton,
    List<String>? digits,
  }) {
    Navigator.push(
        context,
        PageRouteBuilder(
          opaque: opaque,
          pageBuilder: (context, animation, secondaryAnimation) =>
              PasscodeScreen(
            title: Text(
              texttilte,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            circleUIConfig: circleUIConfig,
            keyboardUIConfig: keyboardUIConfig,
            passwordEnteredCallback: _onPasscodeEntered,
            cancelButton: cancelButton,
            deleteButton: Text(
              'Delete',
              style: const TextStyle(fontSize: 16, color: Colors.white),
              semanticsLabel: 'Delete',
            ),
            shouldTriggerVerification: _verificationNotifier.stream,
            backgroundColor: Colors.black.withOpacity(0.8),
            cancelCallback: _onPasscodeCancelled,
            digits: digits,
            passwordDigits: 4,
            //bottomWidget: _buildPasscodeRestoreButton(),
          ),
        ));
  }

  _onPasscodeEntered(String enteredPasscode) async {
    bool isValid = storedPasscode == enteredPasscode;
    _verificationNotifier.add(isValid);
    if (isValid) {
      setState(() {
        this.isAuthenticated = isValid;
        texttilte = 'صحیح,منتظر بمانید';
      });
      await Future.delayed(Duration(milliseconds: 500), () {
        Get.off(() => HomePage());
      });
    }
  }

  _onPasscodeCancelled() {
    Navigator.maybePop(context);
  }

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  _buildPasscodeRestoreButton() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0, top: 20.0),
          child: TextButton(
            child: Text(
              "Reset passcode",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            onPressed: _resetAppPassword,
            // splashColor: Colors.white.withOpacity(0.4),
            // highlightColor: Colors.white.withOpacity(0.2),
            // ),
          ),
        ),
      );

  _resetAppPassword() {
    Navigator.maybePop(context).then((result) {
      if (!result) {
        return;
      }
      _showRestoreDialog(() {
        Navigator.maybePop(context);
        //TODO: Clear your stored passcode here
      });
    });
  }

  _showRestoreDialog(VoidCallback onAccepted) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Reset passcode",
            style: const TextStyle(color: Colors.black87),
          ),
          content: Text(
            "Passcode reset is a non-secure operation!\n\nConsider removing all user data if this action performed.",
            style: const TextStyle(color: Colors.black87),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            TextButton(
              child: Text(
                "Cancel",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
            TextButton(
              child: Text(
                "I understand",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: onAccepted,
            ),
          ],
        );
      },
    );
  }
}
