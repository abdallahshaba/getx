import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';

class MyLocalController extends GetxController{

  Locale initialLang = sharedPref!.getString('Lang')== 'ar'? Locale('ar') :Locale("en");
  void changeLang (String codeLang){
    
    Locale locale = Locale(codeLang);
    sharedPref!.setString("Lang", codeLang);
    Get.updateLocale(locale);
  }
}