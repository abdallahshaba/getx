import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/services/setting_services.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    SettingServices c = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingServices>(builder: (context){
              return Center(
              child: Text('${c.counter}' , style: TextStyle(fontSize: 30),),
            );
            }),
            Center(
              child: MaterialButton(
                onPressed: (){
                  c.increase();
                },

                child: Text("Counter Increase"),
                color: Colors.blue,
                ),
                
            ),
            Center(
              child: MaterialButton(
                onPressed: (){
                  c.sharedPref.clear();
                },

                child: Text("Clear Shared Preference"),
                color: Colors.blue,
                ),
                
            )
          ],
        ),
      ),
    );
  }
}