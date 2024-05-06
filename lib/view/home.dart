import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';


// ignore: must_be_immutable
class Home extends StatelessWidget {
   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home" , style: TextStyle(color: Colors.white),),
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
                  Get.offNamed('/');
                  
                },
                child: Text('Sign Out'),
                ),
            )
          ],
        ),
      )
          );
  }
}