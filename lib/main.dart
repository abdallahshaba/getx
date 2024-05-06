import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/login.dart';

void main() {
  runApp(const MyApp());
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
        initialRoute: '/',
        getPages: [
        GetPage(name: '/', page: () => Login(),),
        GetPage(name: '/home', page: () => Home(),)
        
        ],
        );
  }
}
