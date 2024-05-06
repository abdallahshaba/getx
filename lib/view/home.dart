import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/binding/myBinding.dart';
import 'package:get_x/view/screen_one.dart';
import 'package:get_x/view/screen_tow.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  
                onPressed: (){
                   Get.to(() =>  ScreenOne());
                },
                child: Text('Screen One' , style: TextStyle(fontSize: 32),),
                color: Colors.blue,
                ),
               const SizedBox(height: 10,),
                MaterialButton(
                  
                onPressed: (){
                  Get.to(() =>  ScreenTow() , binding: MyBinding());
                },
                child: Text('Screen Tow' , style: TextStyle(fontSize: 32),),
                color: Colors.blue,
                ),
              ],
            )
          ),
          );
  }
}