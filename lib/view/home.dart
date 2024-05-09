import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: (){
                  Get.toNamed("/pageTow" , arguments: {
                    "name" : "Abdallah",
                    "age" : "22",
                  });
                },
                color: Colors.blue,
                child: Text("Go To Page Two" , style: TextStyle(color: Colors.white),),
                ),

            ),
          ],
        ),
      )
    );
  }
}