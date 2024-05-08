import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/locale/local.dart';
import 'package:get_x/locale/local_controoler.dart';
import 'package:get_x/view/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
 const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  MyLocalController controller = Get.put(MyLocalController());
    return  GetMaterialApp(
      locale: controller.initialLang,
      translations: MyLocal(),
      title: 'Getx Cource',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
        debugShowCheckedModeBanner: false,
        home: Home(),
        );
  }
}
