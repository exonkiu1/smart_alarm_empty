class phones {
  String id;
  String phone;
  String Name; // نام
  String OnPhones; //روشن خاموش
  String OpratorSim; //اپراتور سیم کارت
  String Contacts; //مخاطبین
  String Zone; //زون ها
  String Relleh; //رله
  String Language; //زبان دستگاه
  String CallOnElectricity; //تماس قطعی برق
  String AlarmTime; //زمان آژیر
  String PeriodicInventoryReport; //گزارش دوره ای موجودی
  String PeriodicBatteryReport; //گزارش دوره ای باطری
  String MoodAlarm; //مد آلارم
  String Password; //پسورد
  String Charge; //شارژ
  String VoltAc;
  String Speaker;
  String Countremote;
  String Anten;
  String CountConuntect;
  String StatusNetwork;
  String Voltbatry;
  String StatusRelleh;
  String contacts1;
  String contacts2;
  String contacts3;
  String contacts4;
  String contacts5;
  String contacts6;
  String contacts7;
  String contacts8;
  String contacts9;
  String contacts10;
  String zoonOnOff;
  String nameZoon;
  String remoteOnOff;
  phones(
      {required this.AlarmTime,
      required this.CallOnElectricity,
      required this.Contacts,
      required this.Language,
      required this.MoodAlarm,
      required this.Name,
      required this.OnPhones,
      required this.OpratorSim,
      required this.Password,
      required this.PeriodicBatteryReport,
      required this.PeriodicInventoryReport,
      required this.Relleh,
      required this.Zone,
      required this.phone,
      required this.Anten, //
      required this.Charge,
      required this.CountConuntect,
      required this.Countremote,
      required this.Speaker,
      required this.StatusNetwork,
      required this.StatusRelleh,
      required this.VoltAc,
      required this.Voltbatry,
      required this.contacts1,
      required this.contacts2,
      required this.contacts3,
      required this.contacts4,
      required this.contacts5,
      required this.contacts6,
      required this.contacts10,
      required this.contacts7,
      required this.contacts8,
      required this.contacts9,
      required this.id,
      required this.zoonOnOff,
      required this.nameZoon,
      required this.remoteOnOff});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'AlarmTime': AlarmTime,
      'CallOnElectricity': CallOnElectricity,
      'Contacts': Contacts,
      'Language': Language,
      'MoodAlarm': MoodAlarm,
      'Name': Name,
      'OnPhones': OnPhones,
      'OpratorSim': OpratorSim,
      'Password': Password,
      'PeriodicBatteryReport': PeriodicBatteryReport,
      'PeriodicInventoryReport': PeriodicInventoryReport,
      'Relleh': Relleh,
      'Zone': Zone,
      'phone': phone, //
      'Anten': Anten,
      'Charge': Charge,
      'CountConuntect': CountConuntect,
      'Countremote': Countremote,
      'Speaker': Speaker,
      'StatusNetwork': StatusNetwork,
      'StatusRelleh': StatusRelleh,
      'VoltAc': VoltAc,
      'Voltbatry': Voltbatry,
      'contacts1': contacts1,
      'contacts2': contacts2, 'contacts3': contacts3, 'contacts4': contacts4,
      'contacts5': contacts5, 'contacts6': contacts6, 'contacts10': contacts10,
      'contacts9': contacts9, 'contacts8': contacts8, 'contacts7': contacts7,
      'zoonOnOff': zoonOnOff,
      'nameZoon': nameZoon,
      'remoteOnOff': remoteOnOff
    };
  }

  @override
  String toString() {
    return 'phones{id:$id phone:$phone AlarmTime:$AlarmTime,CallOnElectricity:$CallOnElectricity,Contacts:$Contacts;,Language:$Language,MoodAlarm:$MoodAlarm,Name:$Name,OnPhones:$OnPhones,OpratorSim:$OpratorSim,Password:$Password,PeriodicBatteryReport:$PeriodicBatteryReport,PeriodicInventoryReport:$PeriodicInventoryReport,Relleh:$Relleh,Zone:$Zone,Anten: $Anten,Charge :$Charge,CountConuntect: $CountConuntect,Countremote:$Countremote,Speaker: $Speaker,StatusNetwork:$StatusNetwork,StatusRelleh:$StatusRelleh,VoltAc:$VoltAc,Voltbatry:$Voltbatry,contacts1:$contacts1,contacts2:$contacts2,contacts3:$contacts3,contacts4:$contacts4,contacts5:$contacts5,contacts6:$contacts6,contacts7:$contacts7,contacts8:$contacts8,contacts9:$contacts9,contacts10:$contacts10,zoonOnOff:$zoonOnOff,nameZoon:$nameZoon,remoteOnOff:$remoteOnOff}';
  }
}
