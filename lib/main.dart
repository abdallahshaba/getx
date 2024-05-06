import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/binding/myBinding.dart';
import 'package:get_x/view/home.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
 const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: MyBinding(),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
           body: Home()
        ));
  }
}
