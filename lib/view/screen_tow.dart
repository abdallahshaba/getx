import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';


class ScreenTow extends StatelessWidget {
   ScreenTow({super.key});

   final HomeController controller = Get.find(); 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Screen Tow")
      ),
      body: Center(
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('${controller.counter}' , style: TextStyle(fontSize: 32),)

          ],
        ),
      ),
    );
  }
}