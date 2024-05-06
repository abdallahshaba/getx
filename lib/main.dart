import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/middleware/auth_middleware.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //علشان نتأكد من كل حاجة اتعملها تهيئية مش اكتر
  sharedPref = await SharedPreferences.getInstance();
  //كدا اقدر اوصل للمتغير دا من اي مكان في التطبيق
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
        GetPage(name: '/', page: () => Login(), middlewares: [
          AuthMiddleWare()
        ]),
        GetPage(name: '/home', page: () => Home(),)
        
        ],
        );
  }
}
