import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';


// ignore: must_be_immutable
class Admin extends StatelessWidget {
   const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Admin" , style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                onPressed: (){
                  sharedPref!.clear();
                  //كدا اول ما اضغط علي الزر يروح يخزن القيمة اللي في المتغير الحالية
                  Get.offNamed("/");
                },
                child: const Text('Sign out' , style: TextStyle(color: Colors.white),),
                ),
            )
          ],
        ),
      )
          );
  }
}