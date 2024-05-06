import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_x/controller/home_controller.dart';

// ignore: must_be_immutable
class ScreenOne extends StatelessWidget {
   ScreenOne({super.key});

  final HomeController controller = Get.find(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Screen One")
      ),
      body: Center(
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: (){
                controller.incresment();
              },
               icon: Icon(Icons.add)
               ),

               GetBuilder<HomeController>(
                builder: (controller) => Text('${controller.counter}' , 
                style: TextStyle(fontSize: 32),)),

               IconButton(
              onPressed: (){
                controller.decrecment();
              },
               icon: Icon(Icons.remove)
               ),
          ],
        ),
      ),
    );
  }
}