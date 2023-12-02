// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Getxcontroller/controllerOnOff.dart';
import '/Getxcontroller/controllerphoneinfo.dart';
import '/color.dart';
import 'package:telephony/telephony.dart';

import '../../main.dart';

List<String> helptext = [
  'در صفحه اصلی 4 دکمه فعال و غیر فعال ,سایلنت,نیمه فعال وجود دارد برای تغییر حالت دزدگیر'
      // 'در صفحه اصلی برنامه میتوانید وضعیت کلی دستگاه را مشاهد نمایید بازدن دکمه استعلام دستگاه اطلاعات دیده خواهد شد کپسول آبی را در این صفحه میزان شارژ نسبی دستگاه را نمایش میدهد و اگر تعداد دستگاه از یکی بیشتر باشد با کشیدن دست به سمت راست یا چپ دستگاه ,دستگاه تغییر میکند',
      'در صفحه افزودن دستگاه میتوانید مشخصات دستگاه جدید از جمله نام دستگاه و شماره دستگاه را وارد نمایید.پس از ثبت دستگاه جدید در صفحه اصلی اضافه  و نشان داده خواهد شد',
  'برای شارژ دستگاه با زدن دکمه شارژ دستگاه و وارد کردن رمز شارژ دستگاه خود را شارژ کنید و بعد از این کار با زدن دکمه استعلام در همان صفحه اصلی مقدار شارژ خود را بروز رسانی کنید',
  'در بخش تنظیمات دستگاه موارد زیر قابل تنظیم است:1)تغییر رمز دستگاه2)ویرایش اطلاعات دستگاه جاری(در این بخش میتوانید دستگاه جای را نیز حذف کنید)3)حذف ریموت های متصل به دستگاه4)ریست تنظیمات دستگاه به حالت کار خانه)',
  'این بخش شامل تنظیمات پیشرفته ای است که میتوانید روی دستگاه خود اعمال کنید . در این صفحه گزینه مدیریت دستگاه با مخاطبین وجود دارد که با فعال کردن آن میتوان به دستگاه اعلام کرد که فقط تماس های ورودی از مخاطبین را قبول کند و بقیه شماره ها رد تماس شوند',
  'در این صفحه میتوانید مخاطبین مورد نظر که دستگاه اطلاعات را به انها ارسال میکند وارد نمایید.همچنین میتوانید برای هر مخاطب تنظیمات خاص خود را اعمال کنید مخاطب اول مدیر میباشد همچنین با زدن دکمه استعلام مخاطبین میتوانید اطلاعات مخاطبین را از دستگاه دریافت نمایید در منوی تنظیمات پیشرفته میتوانید تعیین کنید که دستگاه شما تماس های ورودی را فقط از مخاطبین دریافت نمایید',
  'در این صفحه با انتخاب نوع هر نوع زون از منو کشویی تغییر روی دستگاه  اعمال خواهد شد همچنین میتوانید دستور حذف زون را برای هر نوع زون جدا گانه به دستگاه ارسال کنید در انتهای صفحه با زدن دکمه استعلام زونها میتوانید نوع هر نوع زون را از دستگاه دریافت نمایید',
  'در این صفحه شامل کلید تنظیمات مربوط به اپلیکیشن اندروید میباشد با فعال کردن نمایش صفحه رمز بعد از هر بار باز کردن نرم افزار از شما رمز ورود به صورت پیشفرض 0000میباشد همچنین میتوانید با اثر انگشت و یا پسورد تعیین شده وارد نرم افزار شوید در بخش شخصی سازی صفحه اصلی میتوانید تعیین کنید که چه ایتمی در صفحه اصلی نمایش داده شود در بخش زمان تریگر ها میتوانید تعیین کنید که زمان دکمه تریگر که در بخش رله های صفحه اصلی وجود دارد به چه میزان میباشد در بخش تنظیم کپسول شارژ نیز میتوانید به طور مثال عدد 2000تومان رسید خالی نمایش داده شود و به شارژ 50000تومان رسسید کپسول صفحه اصلی کاملا پر نمایش داده شود و با انتخاب تنظیمات برنامه کلیه تنظیمات مربوط به برنامه حذف و به حالت پیشفرض برخواهد گشت',
  '',
  '',
  '',
  '',
  '',
];
List<String> titletext = [
  'صفحه اصلی',
  'افزودن دستگاه',
  'تنظیم سیمکارت',
  'تنظیمات',
  'تنظیمات عمومی',
  'مخاطبین',
  'زون ها',
  'تنظیمات نرم افزار اندروید',
  '',
];
String des2 =
    'ابتدا دستگاه را دیفالت کنید(دکمه DEF  را 5 ثانیه نگه دارید)\n سپس مخاطب اول با سیم کارت داخل دستگاه تماس برقرار کند.(بعد از شنیدن صدای منشی مکالمه را قطع کنید)  \n  سپس مخاطب دوم با سیم کارت داخل دستگاه تماس برقرار کند و بعد از صدای منشی , تماس را قطع کنید.و به همین ترتیب مخاطب سوم اضافه میشود.(توجه داشته باشید مخاطب دوم و سوم اختیاری هستند) \n اکنون ریموت ها رو ست کنید(دکمه LRN را نگه داشته و یکی از دکمه های ریموت را فشار دهید)و......تمام \n   ';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mapTheme[
          Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![0],
      appBar: AppBar(
        title: Center(
          child: Text(
            'راهنمایی',
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
          child: Column(children: [
        widgethelp(title: 'راهنمای فوق سریع', des: des2),
        SizedBox(
          height: 10,
        ),
        /* widgethelp(
            title: 'راهنمایی بیشتر',
            des:
                'برای راهنمایی بیشتر به سایت ما ringalarm.ir مراجعه فرمایید سپاس') */
      ])),
    );
  }
}

class widgethelp extends StatelessWidget {
  const widgethelp({Key? key, required this.title, required this.des})
      : super(key: key);
  final String title;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 5, top: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: mapTheme[
                Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            width: Get.width * 0.5,
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: mapTheme[
                  Get.find<controllerphoneinfo>(tag: 'secend').theme.value]![1],
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                      .theme
                      .value]![0],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              des,
              style: TextStyle(
                color: mapTheme[Get.find<controllerphoneinfo>(tag: 'secend')
                    .theme
                    .value]![1],
              ),
              textDirection: TextDirection.rtl,
            ),
          )
        ],
      ),
    );
  }
}
