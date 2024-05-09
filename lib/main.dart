import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/page_tow.dart';
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
    return  GetMaterialApp(
      initialRoute: '/',
      title: 'Getx Cource',
      theme: ThemeData.dark(),
      getPages: [
        GetPage(name: '/', page: ()=> const Home()),
        GetPage(name: '/pageTow', page: ()=> const PageTow())
        ],
        debugShowCheckedModeBanner: false,
        );
  }
}
