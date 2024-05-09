import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';

class MyLocalController extends GetxController{

  Locale initialLang = sharedPref!.getString("Lang") == null ? Get.deviceLocale! : Locale(sharedPref!.getString("Lang")!);

  void changLang (String codeLang){
    Locale locale = Locale(codeLang);
    sharedPref!.setString("Lang", codeLang);
    Get.updateLocale(locale);
  }
}