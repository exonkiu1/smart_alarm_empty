//import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../color.dart';
import '/Datebase/Model.dart';
import '/Datebase/Datebase.dart';
import 'package:flutter/material.dart';

import 'controllerOnOff.dart';
import 'package:telephony/telephony.dart';
import 'controllerOnOff.dart';

String copyphonenumber = '';

class controllerphoneinfo extends GetxController {
  @override
  void onInit() async {
    print('Go');
    phoness.value = await PhonesDatabase.instance.phoness();
    lenghtmainpage.value = phoness.length;
    if (lenghtmainpage.value > 0) {
      itemzero();
    } else {
      // Get.offNamed('/adddevice');
    }

    // print(int.tryParse('256788yty'.replaceAll(new RegExp(r'[^0-9]'),'')));

    // TODO: implement onInit
    super.onInit();
  }

  RxBool show_getlatestPhone = false.obs;
  RxString theme = 'blue'.obs;
  RxInt lenghtmainpage = 0.obs;
  RxInt ChangeDevices = 0.obs;
  //SwiperController mainpagecontroller = SwiperController();
  RxString id = ''.obs;
  RxInt indexdevice = 0.obs;
  RxList<phones> phoness = <phones>[].obs;
  RxString phone = ''.obs;
  RxString Name = ''.obs; // نام
  RxString OnPhones = 'off'.obs; //روشن خاموش
  RxString OpratorSim = ''.obs; //اپراتور سیم کارت
  RxString Contacts = ',,,,,'.obs; //مخاطبین
  RxString Zone = ''.obs; //زون ها
  RxString Relleh = 'on on'.obs; //رله
  RxString Language = 'fri'.obs; //زبان دستگاه
  RxString CallOnElectricity = 'on'.obs; //تماس قطعی برق
  RxString AlarmTime = '10'.obs; //زمان آژیر
  RxString PeriodicInventoryReport = '12'.obs; //گزارش دوره ای موجودی
  RxString PeriodicBatteryReport = '12'.obs; //گزارش دوره ای باطری
  RxString MoodAlarm = '0'.obs; //مد آلارم
  RxString Password = ''.obs; //پسورد
  RxString Relleh1 = 'on'.obs;
  RxString Relleh2 = 'on'.obs;
  RxInt Charge = 0.obs; //شارژ
  RxString VoltAc = ''.obs;
  RxString Speaker = ''.obs;
  RxString Countremote = ''.obs;
  RxString Anten = ''.obs;
  RxString CountConuntect = ''.obs;
  RxString StatusNetwork = ''.obs;
  RxString Voltbatry = ''.obs;

  RxString StatusRelleh = ''.obs;
  RxString StatusRelleh2 = ''.obs;
  RxString contacts1 = ''.obs;
  RxString contacts2 = ''.obs;
  RxString contacts3 = ''.obs;
  RxString contacts4 = ''.obs;
  RxString contacts5 = ''.obs;
  RxString contacts6 = ''.obs;
  RxString Statuszoons = '1111'.obs;
  RxBool OnPassword = false.obs;
  RxInt Chargemin = 0.obs, Chargemax = 0.obs;
  RxBool smartOn = false.obs;
  RxBool smartOff = false.obs;
  RxBool smart_releh11 = false.obs;
  RxBool smart_releh10 = false.obs;
  RxBool smart_releh21 = false.obs;
  RxBool smart_releh20 = false.obs;
  List<RxString> nameZoon = List.generate(15, (index) => ''.obs);
  RxString remoteOnOff = 'on'.obs;
  //RxInt testcopy = 0.obs;
  RxList<String> contact1 = <String>[
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ',
  ].obs;
  RxList<int> zones = <int>[0, 0, 0, 0, 0].obs;
  RxList<String> zonesdropdown = <String>[
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
    'Normaly close',
  ].obs;
  RxList<bool> eyezoon = List.generate(15, (index) => true).obs;
  RxString eyezoonindex = '11111111111111'.obs;
  List<TextEditingController> namecontect =
      List.generate(10, (index) => TextEditingController());
  List<TextEditingController> phonecontect =
      List.generate(10, (index) => TextEditingController());
  List<TextEditingController> Rellehtime =
      List.generate(10, (index) => TextEditingController());
  RxList<String> dropdownValues =
      <String>['A', 'C', 'C', 'C', 'C', 'C', 'C', 'C', 'C', 'C'].obs;
  RxList<String> Relehs = <String>[' ', ' ', ' ', ' '].obs;
  RxInt TypeRelleh = 0.obs;
  TextEditingController textphone = TextEditingController(),
      textnamephone = TextEditingController();
  RxList<String> station = <String>[].obs;
  //
  //
  //
  //
  void changepage(int count) {
    id.value = phoness[count].id;
    phone.value = phoness[count].phone;
    Name.value = phoness[count].Name; // نام
    OnPhones.value = phoness[count].OnPhones; //روشن خاموش

    OpratorSim.value = phoness[count].OpratorSim; //اپراتور سیم کارت
    Statuszoons.value = phoness[count].Contacts; //مخاطبین
    Zone.value = phoness[count].Zone; //زون ها
    Relleh.value = phoness[count].Relleh; //رله
    Language.value = phoness[count].Language; //زبان دستگاه
    CallOnElectricity.value = phoness[count].CallOnElectricity; //تماس قطعی برق
    AlarmTime.value = phoness[count].AlarmTime; //زمان آژیر
    PeriodicInventoryReport.value =
        phoness[count].PeriodicInventoryReport; //گزارش دوره ای موجودی
    PeriodicBatteryReport.value =
        phoness[count].PeriodicBatteryReport; //گزارش دوره ای باطری
    MoodAlarm.value = phoness[count].MoodAlarm; //مد آلارم
    Password.value = phoness[count].Password;
    VoltAc.value = phoness[count].VoltAc;
    Speaker.value = phoness[count].Speaker;
    Voltbatry.value = phoness[count].Voltbatry;
    Anten.value = phoness[count].Anten;
    CountConuntect.value = phoness[count].CountConuntect;
    Countremote.value = phoness[count].Countremote;
    StatusNetwork.value = phoness[count].StatusNetwork;
    StatusRelleh.value = phoness[count].StatusRelleh;
    List<RxString> inqury_items = [
      VoltAc,
      Speaker,
      Voltbatry,
      StatusRelleh,
      StatusRelleh2,
      CountConuntect,
      Countremote,
      Anten,
      StatusNetwork,
      Statuszoons
    ];
    //StatusRelleh2.value = phoness[count].StatusRelleh.split('+')[1];

    contact1[0] = phoness[count].contacts1;
    contact1[1] = phoness[count].contacts2;
    contact1[2] = phoness[count].contacts3;
    contact1[3] = phoness[count].contacts4;
    contact1[4] = phoness[count].contacts5;
    contact1[5] = phoness[count].contacts6;
    contact1[6] = phoness[count].contacts7;
    contact1[7] = phoness[count].contacts8;
    contact1[8] = phoness[count].contacts9;
    contact1[9] = phoness[count].contacts10;
    //charge
    Charge.value = int.parse(phoness[count].Charge.split(' ')[0]);
    Chargemin.value =
        int.parse(phoness[count].Charge.split(' ')[1].split(',')[0]);
    Chargemax.value =
        int.parse(phoness[count].Charge.split(' ')[1].split(',')[1]);
    //relleh
    TypeRelleh.value = int.parse(phoness[count].Relleh.split(' ')[2]);
    //relleh1
    Relehs[0] = phoness[count].Relleh.split(' ')[0].split('+')[0];
    Relehs[1] = phoness[count].Relleh.split(' ')[0].split('+')[1];
    Relleh1.value = phoness[count].Relleh.split(' ')[0].split('+')[2];
    //relleh2
    Relehs[2] = phoness[count].Relleh.split(' ')[1].split('+')[0];
    Relehs[3] = phoness[count].Relleh.split(' ')[1].split('+')[1];
    Relleh2.value = phoness[count].Relleh.split(' ')[1].split('+')[2];
    //contexts
    for (var j = 0; j < 10; j++) {
      if (contact1[j] != ' ') {
        namecontect[j].text = contact1[j].split('+')[0];
        phonecontect[j].text = contact1[j].split('+')[1];
        dropdownValues[j] = contact1[j].split('+')[2];
      } else {
        namecontect[j].text = '';
        phonecontect[j].text = '';
        dropdownValues[j] = 'A';
      }
      print(contact1);
    }
    eyezoonindex.value = phoness[count].zoonOnOff;

    ///
    for (var i = 0; i < 8; i++) {
      eyezoonindex.value[i] == '1' ? eyezoon[i] = true : eyezoon[i] = false;
    }

    ///
    ///
    for (var i = 0; i < 15; i++) {
      nameZoon[i].value = phoness[count].nameZoon.split(',')[i];
    }

    ///
    //zones
    String copytext;
    List<String> typezoon = [
      'Normaly close',
      'Normaly Open',
      'دینگ دانگ',
      '24 ساعت',
      'حفاظت',
     
    ];
    // print(phoness[count].Zone);
    print(Zone.value.split(' '));
    for (var i = 0; i < (Zone.value.split(' ').length); i++) {
      zonesdropdown[i] = typezoon[int.parse(Zone.value.split(' ')[i])];
    }
    print(zonesdropdown.length);
    //Relleh
  }

  printHello() async {
    final DateTime now = DateTime.now();
    var prefs = await SharedPreferences.getInstance();
    int minute = prefs.getInt('minute1') ?? 0;
    int hour = prefs.getInt('hour1') ?? 0;
    bool smartOn = prefs.getBool('smartOn') ?? false;
    String phone1 = prefs.getString('phone1') ?? '';
    String password = prefs.getString('password_1') ?? '0000';
    if (smartOn) {
      if (now.hour == hour) {
        if (now.minute == minute ||
            now.minute == (minute - 1) ||
            now.minute == (minute + 1)) {
          final Telephony telephony = Telephony.instance;
          telephony.sendSms(
            to: "${phone1}",
            message: '*${password}*11#',
          );
        }
      }
    }
    int minute_1 = prefs.getInt('minute_1') ?? 20;
    int hour_1 = prefs.getInt('hour_1') ?? 4;
    bool smartOff = prefs.getBool('smartOff') ?? false;
    if (smartOff) {
      if (now.hour == hour_1) {
        if (now.minute == minute_1 ||
            now.minute == (minute_1 - 1) ||
            now.minute == (minute_1 + 1)) {
          final Telephony telephony = Telephony.instance;
          telephony.sendSms(
            to: "${phone1}",
            message: '*${password}*10#',
          );
        }
      }
    }
  }

  Future<void> adddevice() async {
    String copyphone = '';
    for (var i = 1; i < textphone.text.length; i++) {
      copyphone = copyphone + textphone.text[i];
    }

    String copyid = '${phoness.length + 1}';
    phones item = phones(
        id: copyid,
        AlarmTime: '10',
        CallOnElectricity: 'off',
        Contacts: '1111',
        Language: 'fri',
        MoodAlarm: '0',
        Name: '${textnamephone.text}',
        OnPhones: 'on',
        OpratorSim:
            '${Get.find<controlleronoff>(tag: 'secend').opretorsim.value}',
        Password: '0000',
        PeriodicBatteryReport: '10',
        PeriodicInventoryReport: '12',
        Relleh: 'رله1+02,00,00+off رله2+02,00,00+off 0',
        Zone: '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0',
        phone: '${copyphone}',
        Anten: ' ',
        Charge: '0 2000,20000',
        CountConuntect: ' ',
        Countremote: ' ',
        Speaker: ' ',
        StatusNetwork: ' ',
        StatusRelleh: ' ',
        VoltAc: ' ',
        Voltbatry: ' ',
        contacts1: ' ',
        contacts2: ' ',
        contacts3: ' ',
        contacts4: ' ',
        contacts5: ' ',
        contacts6: ' ',
        contacts10: ' ',
        contacts7: ' ',
        contacts8: ' ',
        contacts9: ' ',
        zoonOnOff: '111111111111111',
        remoteOnOff: remoteOnOff.value,
        nameZoon: ',,,,,,,,,,,,,,,');
    print(item);
    for (var i = 0; i < (Zone.value.split(' ').length); i++) {
      zonesdropdown[i] = 'Normaly close';
    }
    PhonesDatabase.instance.insertDog(item);
    phoness.add(item);
    lenghtmainpage.value = phoness.length;

    if (phoness.length == 1) {
      itemzero();
      var prefs = await SharedPreferences.getInstance();
      prefs.setString('phone1', '+98${copyphone}');
    }
  }

//
//
//
//
//
//
  void itemzero() {
    int count = 0;
    id.value = phoness[0].id;
    phone.value = phoness[0].phone;
    Name.value = phoness[0].Name; // نام
    OnPhones.value = phoness[0].OnPhones; //روشن خاموش
    OpratorSim.value = phoness[0].OpratorSim; //اپراتور سیم کارت
    Statuszoons.value = phoness[0].Contacts; //مخاطبین
    Zone.value = phoness[0].Zone; //زون ها
    Relleh.value = phoness[0].Relleh; //رله
    Language.value = phoness[0].Language; //زبان دستگاه
    CallOnElectricity.value = phoness[0].CallOnElectricity; //تماس قطعی برق
    AlarmTime.value = phoness[0].AlarmTime; //زمان آژیر
    PeriodicInventoryReport.value =
        phoness[0].PeriodicInventoryReport; //گزارش دوره ای موجودی
    PeriodicBatteryReport.value =
        phoness[0].PeriodicBatteryReport; //گزارش دوره ای باطری
    MoodAlarm.value = phoness[0].MoodAlarm; //مد آلارم
    Password.value = phoness[0].Password; //\
    VoltAc.value = phoness[0].VoltAc;
    Speaker.value = phoness[0].Speaker;
    Voltbatry.value = phoness[0].Voltbatry;
    Anten.value = phoness[count].Anten;
    CountConuntect.value = phoness[count].CountConuntect;
    Countremote.value = phoness[count].Countremote;
    StatusNetwork.value = phoness[count].StatusNetwork;
    StatusRelleh.value = phoness[count].StatusRelleh;

    //Charge
    Charge.value = int.parse(phoness[count].Charge.split(' ')[0]);
    Chargemin.value =
        int.parse(phoness[count].Charge.split(' ')[1].split(',')[0]);
    Chargemax.value =
        int.parse(phoness[count].Charge.split(' ')[1].split(',')[1]);
    //contacts
    contact1[0] = phoness[count].contacts1;
    contact1[1] = phoness[count].contacts2;
    contact1[2] = phoness[count].contacts3;
    contact1[3] = phoness[count].contacts4;
    contact1[4] = phoness[count].contacts5;
    contact1[5] = phoness[count].contacts6;
    contact1[6] = phoness[count].contacts7;
    contact1[7] = phoness[count].contacts8;
    contact1[8] = phoness[count].contacts9;
    contact1[9] = phoness[count].contacts10;

    //relleh
    TypeRelleh.value = int.parse(phoness[count].Relleh.split(' ')[2]);
    Relehs[0] = phoness[count].Relleh.split(' ')[0].split('+')[0];
    Relehs[1] = phoness[count].Relleh.split(' ')[0].split('+')[1];
    Relleh1.value = phoness[count].Relleh.split(' ')[0].split('+')[2];
    //relleh2
    Relehs[2] = phoness[count].Relleh.split(' ')[1].split('+')[0];
    Relehs[3] = phoness[count].Relleh.split(' ')[1].split('+')[1];
    Relleh2.value = phoness[count].Relleh.split(' ')[1].split('+')[2];
    for (var i = 0; i < 6; i++) {
      if (contact1[i] != ' ') {
        namecontect[i].text = contact1[i].split('+')[0];
        phonecontect[i].text = contact1[i].split('+')[1];
        dropdownValues[i] = contact1[i].split('+')[2];
      }
    }

    String copytext;
    List<String> typezoon = [
      'Normaly close',
      'Normaly Open',
      'دینگ دانگ',
      '24 ساعت',
      'حفاظت',
      
    ];

    for (var i = 0; i < (Zone.value.split(' ').length); i++) {
      zonesdropdown[i] = typezoon[int.parse(Zone.value.split(' ')[i])];
    }
    for (var i = 0; i < 15; i++) {
      print('${i + 1}-${zonesdropdown[i]}');
    }

    ///
    eyezoonindex.value = phoness[count].zoonOnOff;

    ///
    for (var i = 0; i < 9; i++) {
      eyezoonindex.value[i] == '1' ? eyezoon[i] = true : eyezoon[i] = false;
    }

    ///
    for (var i = 0; i < 15; i++) {
      nameZoon[i].value = phoness[count].nameZoon.split(',')[i];
    }
  }

  resetphone() async {
    phones item = phones(
        id: id.value,
        AlarmTime: '10',
        CallOnElectricity: 'on',
        Contacts: '1111',
        Language: 'fri',
        MoodAlarm: '0',
        Name: '${textnamephone.text}',
        OnPhones: 'off',
        OpratorSim:
            '${Get.find<controlleronoff>(tag: 'secend').opretorsim.value}',
        Password: '0000',
        PeriodicBatteryReport: '10',
        PeriodicInventoryReport: '12',
        Relleh: 'رله1+02,00,00+off رله2+02,00,00+off 0',
        Zone: '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0',
        phone: '${phone.value}',
        Anten: ' ',
        Charge: '0 2000,20000',
        CountConuntect: ' ',
        Countremote: ' ',
        Speaker: ' ',
        StatusNetwork: ' ',
        StatusRelleh: ' ',
        VoltAc: ' ',
        Voltbatry: ' ',
        contacts1: ' ',
        contacts2: ' ',
        contacts3: ' ',
        contacts4: ' ',
        contacts5: ' ',
        contacts6: ' ',
        contacts10: ' ',
        contacts7: ' ',
        contacts8: ' ',
        contacts9: ' ',
        zoonOnOff: '111111111111111',
        nameZoon: ',,,,,,,,,,,,,,,',
        remoteOnOff: 'on');
    print(item);
    for (var i = 0; i < (Zone.value.split(' ').length); i++) {
      zonesdropdown[i] = 'Normaly close';
    }
    await PhonesDatabase.instance.updatephone(item);
    phoness.clear();
    phoness.value = await PhonesDatabase.instance.phoness();
  }

  updatePhone() async {
    String copyNameZoon = '';
    for (var item in nameZoon) {
      copyNameZoon = copyNameZoon + item.value + ',';
    }
    phones phone1 = phones(
        id: id.value,
        AlarmTime: AlarmTime.value,
        CallOnElectricity: CallOnElectricity.value,
        Contacts: Statuszoons.value,
        Language: Language.value,
        MoodAlarm: MoodAlarm.value,
        Name: Name.value,
        OnPhones: OnPhones.value,
        OpratorSim: OpratorSim.value,
        Password: Password.value,
        PeriodicBatteryReport: PeriodicBatteryReport.value,
        PeriodicInventoryReport: PeriodicInventoryReport.value,
        Relleh:
            '${Relehs[0]}+${Relehs[1]}+${Relleh1} ${Relehs[2]}+${Relehs[3]}+${Relleh2} ${TypeRelleh.value}',
        Zone: Zone.value,
        phone: phone.value,
        Anten: Anten.value,
        Charge: '${Charge.value} ${Chargemin.value},${Chargemax.value}',
        CountConuntect: CountConuntect.value,
        Countremote: Countremote.value,
        Speaker: Speaker.value,
        StatusNetwork: StatusNetwork.value,
        StatusRelleh: '${StatusRelleh.value}',
        VoltAc: VoltAc.value,
        Voltbatry: Voltbatry.value,
        contacts1: contact1[0],
        contacts2: contact1[1],
        contacts3: contact1[2],
        contacts4: contact1[3],
        contacts5: contact1[4],
        contacts6: contact1[5],
        contacts10: contact1[9],
        contacts7: contact1[6],
        contacts8: contact1[7],
        contacts9: contact1[8],
        zoonOnOff: eyezoonindex.value,
        remoteOnOff: remoteOnOff.value,
        nameZoon: copyNameZoon);
    await PhonesDatabase.instance.updatephone(phone1);
    phoness.clear();
    phoness.value = await PhonesDatabase.instance.phoness();

    //phoness.clear();
    // phoness.value = await PhonesDatabase.instance.phoness();
  }

  Deletephons() async {
    for (var item in phoness) {
      if (item.phone == phone.value) {
        PhonesDatabase.instance.deletephone(item);
        Get.snackbar('حذف دستگاه انجام شد ',
            'یکبار برنامه را کامل ببندید دوباره باز کنید');
      }
      phoness.value = await PhonesDatabase.instance.phoness();
      lenghtmainpage.value = phoness.length;
    }
  }

  RxInt fifteensecends = 15.obs;
  startfifteensecends() async {
    fifteensecends.value = 0;
    for (var i = 0; i < 15; i++) {
      await Future.delayed(Duration(seconds: 1));
      fifteensecends = fifteensecends + 1;
    }
  }
///////////
  ///
  ///
  ///
  ///
//

  ///
  ///
  ///
  ///
  ///
  ///
  void onoff(String mode, int code) {
    if (fifteensecends.value >= 15) {
      Get.defaultDialog(
          title: 'هشدار',
          confirmTextColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![2],
          backgroundColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![2],
          buttonColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          titleStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleTextStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleText: 'پیامک فرستاده شود؟',
          /*  onCancel: () => Get.,
                                    textCancel: 'خیر', */
          cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          /*  confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
          */
          textConfirm: 'بله',
          onConfirm: () async {
            Get.back();
            OnPhones.value = mode;
            final Telephony telephony = Telephony.instance;
            telephony.sendSms(
              to: "+98${phone.value}",
              message: '*${Password.value}*$code#',
            );
            await updatePhone();
            startfifteensecends();
            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
          });
    } else {
      Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید');
    }
  }

  //
  //شنود
  //
  //
  hearing() {
    if (fifteensecends.value >= 15) {
      Get.defaultDialog(
          title: 'هشدار',
          confirmTextColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![2],
          backgroundColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![2],
          buttonColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          titleStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleTextStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleText: 'پیامک شنود دستگاه فرستاده شود؟',
          /*  onCancel: () => Get.,
                                    textCancel: 'خیر', */
          cancelTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[
              Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          /*  confirmTextColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![2],
          buttonColor: Get.find<controlleronoff>(tag: 'secend').Themecolor[Get.find<controlleronoff>(tag: 'secend').moodcolor]![0],
          */
          textConfirm: 'بله',
          onConfirm: () async {
            Get.back();

            final Telephony telephony = Telephony.instance;
            telephony.sendSms(
              to: "+98${phone.value}",
              message: '*${Password.value}*62#',
            );
            await updatePhone();
            startfifteensecends();
            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
          });
    } else {
      Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید');
    }
  }
  //
  //شارژ اعتبار
  //
  //

  void chargesim() {
    TextEditingController TextCharge = TextEditingController();
    Get.defaultDialog(
        backgroundColor: mapTheme[
            Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
        title: 'شارژ اعتبار',
        titleStyle: TextStyle(
          color: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
        ),
        content: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(3),
                child: TextField(
                  controller: TextCharge,
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'کد شارژ اینجا وارد کنید...',
                      hintStyle: TextStyle(
                          color: mapTheme[
                              Get.find<controllerphoneinfo>(tag: 'secend')
                                  .theme
                                  .value]![1],
                          fontSize: 14)),
                )),
            InkWell(
              onTap: fifteensecends.value >= 15
                  ? () async {
                      Get.back();
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
                            final Telephony telephony = Telephony.instance;
                            telephony.sendSms(
                              to: "+98${phone.value}",
                              message:
                                  '*${Password.value}*60*${TextCharge.text}#',
                            );
                            Get.back();
                            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
                            startfifteensecends();
                          });
                    }
                  : () => Get.snackbar(
                      'خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید'),
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
                  'انجام شارژ',
                  style: TextStyle(
                    color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                        .theme
                        .value]![1],
                  ),
                ),
              ),
            )
          ],
        ));
  }

  //
  //استعلام شارژ
  //
  //
  void inqurycharge() async {
    if (fifteensecends.value >= 15) {
      Get.defaultDialog(
          title: 'هشدار',
          middleText: 'پیامک فرستاده شود؟',
          textConfirm: 'بله',
          confirmTextColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          backgroundColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          buttonColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          titleStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleTextStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          onConfirm: () {
            final Telephony telephony = Telephony.instance;

            if (OpratorSim.value == 'rl') {
              telephony.sendSms(
                to: "+98${phone.value}",
                message: '*${Password.value}*60*200*2*2*1#',
              );
            }
            if (OpratorSim.value == 'ir') {
              telephony.sendSms(
                to: "+98${phone.value}",
                message: '*${Password.value}*60*141*1#',
              );
            }
            if (OpratorSim.value == 'ha') {
              telephony.sendSms(
                to: "+98${phone.value}",
                message: '*${Password.value}*60*140*11#',
              );
            }
            Get.back();
            Get.find<controlleronoff>(tag: 'secend').InquiryCharge.value = true;
            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
            startfifteensecends();
            telephony.listenIncomingSms(
                onNewMessage: (SmsMessage message) {
                  /*  if (message.address == "+98${phone.value}" &&
                      message.body!.split('bar').length > 0) {
                    Get.snackbar('اطلاعیه', 'مقدار شارژ دریافت شد');
                    Get.find<controlleronoff>(tag: 'secend')
                        .InquiryCharge
                        .value = false;
                    Charge.value = int.parse(message.body!.split(' ')[1]);
                    updatePhone();
                  } */
                  /*  if (message.address == "+98${phone.value}" &&
                      message.body!.split('شما').length > 0) { */
                  if (Get.find<controlleronoff>(tag: 'secend')
                          .InquiryCharge
                          .value ==
                      true) {
                    Get.snackbar('اطلاعیه', 'مقدار شارژ دریافت شد');
                    Get.find<controlleronoff>(tag: 'secend')
                        .InquiryCharge
                        .value = false;

                    Charge.value = int.parse(
                        message.body!.replaceAll(new RegExp(r'[^0-9]'), ''));
                    Get.snackbar('اطلاعیه', '${Charge.value}');
                    updatePhone();
                  }
                },
                listenInBackground: false);
          });
      //Get.off(()=>Mainpage());
    } else {
      Get.snackbar('خطا', 'هر 15 ثانیه یکبار درخواست ارسال کنید');
    }
  }

  //
  //استعلام کلی
  //
  void inquryall() {
    if (fifteensecends.value >= 15) {
      Get.defaultDialog(
          title: 'هشدار',
          middleText: 'پیامک فرستاده شود؟',
          textConfirm: 'بله',
          confirmTextColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          backgroundColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          buttonColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          titleStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleTextStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          onConfirm: () async {
            Get.back();
            final Telephony telephony = Telephony.instance;
            //  String copyMassege = '0,1,1110,0,1,30,1,1,99,0';
            telephony.sendSms(
              to: "+98${phone.value}",
              message: '*${Password.value}*90#',
            );

            Get.find<controlleronoff>(tag: 'secend').InquiryAll.value = true;
            startfifteensecends();
            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');

            telephony.listenIncomingSms(
                onNewMessage: (SmsMessage message) {
                  // Handle message
                  if (message.address == "+98${phone.value}" &&
                      message.body!.split(',').length > 5) {
                    Get.find<controlleronoff>(tag: 'secend').InquiryAll.value =
                        false;
                    List<String> resivesms = message.body!.split(',');
                    Get.snackbar('${resivesms}اطلاعیه', 'پیامک دریافت  شد');

                    //1
                    if (resivesms[0] == '0') {
                      OnPhones.value = 'off';
                    }
                    if (resivesms[0] == '4') {
                      OnPhones.value = 'on';
                    }
                    if (resivesms[0] == '3') {
                      OnPhones.value = 'silent';
                    }
                    if (resivesms[0] == '2') {
                      OnPhones.value = 'halfon';
                    }
                    //2
                    if (resivesms[1] == '1') {
                      VoltAc.value = 'روشن';
                    } else {
                      VoltAc.value = 'خاموش';
                    }
                    //3
                    Statuszoons.value = resivesms[2];
                    //4
                    if (resivesms[3] == '1') {
                      Speaker.value = 'روشن';
                    } else {
                      Speaker.value = 'خاموش';
                    }
                    //5
                    Countremote.value = resivesms[4];
                    //6
                    // String copyAnten='${(int.parse(resivesms[5]) / 31) * 100}'[0];
                    Anten.value = '${(int.parse(resivesms[5]) / 31) * 100}'[0] +
                        '${(int.parse(resivesms[5]) / 31) * 100}'[1] +
                        '${(int.parse(resivesms[5]) / 31) * 100}'[2] +
                        '${(int.parse(resivesms[5]) / 31) * 100}'[3];
                    // (resivesms[5]);

                    //7
                    CountConuntect.value = resivesms[6];
                    //8
                    if (resivesms[7] == '1') {
                      StatusNetwork.value = 'روشن';
                    } else {
                      StatusNetwork.value = 'خاموش';
                    }
                    //9
                    Voltbatry.value = resivesms[8];

                    //10
                    if (resivesms[9] == '1') {
                      StatusRelleh.value = 'روشن';
                    } else {
                      StatusRelleh.value = 'خاموش';
                    }

                    updatePhone();
                  }
                },
                listenInBackground: false);
          });
    } else {}
  }

  //
  //استعلام زون ها
  //
  void inquryzoons() {
    if (fifteensecends.value >= 15) {
      Get.defaultDialog(
          title: 'هشدار',
          middleText: 'پیامک فرستاده شود؟',
          textConfirm: 'بله',
          confirmTextColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          backgroundColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          buttonColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          titleStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleTextStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          onConfirm: () {
            List<String> type = ['N', 'O', 'D', 'H', 'G', 'S'];
            List<String> copyzone = Zone.value.split(' ');
            for (var i = 1; i < '*Z1N*Z2N*Z3N*Z4N#'.split('*Z').length; i++) {
              for (var j = 1; j < type.length; j++) {
                if ('*Z1N*Z2N*Z3N*Z4N#'.split('*Z')[i][1] == type[j]) {
                  //   j == 1 ? j = 0 : print('hello');

                  copyzone[i - 1] = '$j';
                  /*  print(
                                            '*Z1N*Z2H*Z3D*Z4G#'.split('*Z')[i][1]);
                                        print(type[j]); */
                  // print(j);
                }
                print(j);
              }
            }
            Zone.value = '';
            for (var i = 0; i < copyzone.length; i++) {
              Zone.value = Zone.value + copyzone[i] + (i == 14 ? '' : ' ');
            }
            print(Zone);
            updatePhone();
            List<String> typezoon = [
              'Normaly close',
              'Normaly Open',
              'دینگ دانگ',
              '24 ساعت',
              'حفاظت',
              'جاسوسی',
              'آبی',
              '24 ساعت جاسوسی آبی'
            ];

            for (var i = 0; i < (Zone.value.split(' ').length - 2); i++) {
              zonesdropdown[i] = typezoon[int.parse(Zone.value.split(' ')[i])];
            }
            final Telephony telephony = Telephony.instance;
            //  String copyMassege = '0,1,1110,0,1,30,1,1,99,0';
            telephony.sendSms(
              to: "+98${phone.value}",
              message: // '*Z1N*Z2H*Z3D*Z4G#',

                  '*${Password.value}*92#',
            );
            Get.back();

            Get.find<controlleronoff>(tag: 'secend').Inquiryzoon.value = true;

            Get.snackbar('اطلاعیه', 'پیامک ارسال شد');
            startfifteensecends();
            telephony.listenIncomingSms(
                onNewMessage: (SmsMessage message) {
                  // Handle message
                  if (message.address == "+98${phone.value}" &&
                      message.body!.split('*Z').length > 2) {
                    Get.find<controlleronoff>(tag: 'secend').Inquiryzoon.value =
                        false;
                    Get.snackbar('اطلاعیه', 'پیامک دریافت شد');
                    List<String> type = ['N', 'O', 'D', 'H', 'G', 'S'];
                    List<String> copyzone = Zone.value.split(' ');
                    for (var i = 1; i < message.body!.split('*Z').length; i++) {
                      for (var j = 1; j < type.length; j++) {
                        if (message.body!.split('*Z')[i][1] == type[j]) {
                          // j == 1 ? j = 0 : print('hello');
                          copyzone[i - 1] = '$j';
                        }
                      }
                    }
                    Zone.value = '';
                    for (var i = 0; i < copyzone.length; i++) {
                      Zone.value =
                          Zone.value + copyzone[i] + (i == 14 ? '' : ' ');

                      print(i);
                    }
                    updatePhone();
                    List<String> typezoon = [
                      'Normaly close',
                      'Normaly Open',
                      'دینگ دانگ',
                      '24 ساعت',
                      'حفاظت',
                      'جاسوسی',
                      'آبی',
                      'حفاظت'
                    ];

                    for (var i = 0;
                        i < (Zone.value.split(' ').length - 2);
                        i++) {
                      zonesdropdown[i] =
                          typezoon[int.parse(Zone.value.split(' ')[i])];
                    }
                  }
                },
                listenInBackground: false);
          });
    } else {}
  }

  void inqurycontacts() {
    if (fifteensecends.value >= 15) {
      Get.defaultDialog(
          title: 'هشدار',
          middleText: 'پیامک فرستاده شود؟',
          textConfirm: 'بله',
          confirmTextColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          backgroundColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
          buttonColor: mapTheme[
              Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          titleStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          middleTextStyle: TextStyle(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          onConfirm: () {
            final Telephony telephony = Telephony.instance;
            //  String copyMassege = '0,1,1110,0,1,30,1,1,99,0';
            telephony.sendSms(
              to: "+98${phone.value}",
              message:
                  //'*09307112409B1#',
                  '*${Password.value}*91#',
            );
            Get.back();
            Get.find<controlleronoff>(tag: 'secend').Inquirycontect.value =
                true;

            Get.snackbar('اطلاعیه', 'پیامک فرستاده شد');
            startfifteensecends();
            telephony.listenIncomingSms(
                onNewMessage: (SmsMessage message) {
                  // Handle message
                  if (message.address == "+98${phone.value}" &&
                      message.body!.split('*0').length > 0) {
                    Get.find<controlleronoff>(tag: 'secend')
                        .Inquirycontect
                        .value = false;
                    Get.snackbar('اطلاعیه', 'پیامک دریافت شد');
                    List<String> copycontexts = message.body!.split('*');
                    for (var i = 1; i < copycontexts.length; i++) {
                      String copyphonecontext = '';
                      for (var j = 0; j < 11; j++) {
                        copyphonecontext =
                            copyphonecontext + copycontexts[i][j];
                      }
                      phonecontect[i - 1].text = copyphonecontext;
                      dropdownValues[i - 1] = copycontexts[i][11];
                      contact1[i - 1] =
                          ' +${copyphonecontext}+${copycontexts[i][11]}';
                      updatePhone();
                    }
                  }
                },
                listenInBackground: false);
          });
    } else {
      Get.snackbar('خطا', 'هر 15 ثانیه امتحان کنید');
    }
  }

  RxInt emptycontact = 0.obs;
  void checkemtyucontact() {
    for (var i = 0; i < 10; i++) {
      if (phonecontect[i].text == '') {
        emptycontact.value = i;
        break;
      }
    }
  }

  RxDouble padd = 8.0.obs;
}
