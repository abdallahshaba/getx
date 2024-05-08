import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/locale/local.dart';
import 'package:get_x/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
 const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      locale: Get.deviceLocale,
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
