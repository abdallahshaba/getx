import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/services/setting_services.dart';
import 'package:get_x/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(const MyApp());
}

Future initialService() async {
  await Get.putAsync(() => SettingServices().init());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
 const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Getx Cource',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
        debugShowCheckedModeBanner: false,
        home: Home(),
        );
  }
}
