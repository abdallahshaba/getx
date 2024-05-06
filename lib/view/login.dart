import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
   const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login" , style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  Get.offNamed('/home');
                },
                child: Text('Login' , style: TextStyle(color: Colors.white),),
                ),
            )
          ],
        ),
      )
          );
  }
}