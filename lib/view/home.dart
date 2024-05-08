import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/locale/local_controoler.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    MyLocalController controller = MyLocalController();
    return Scaffold(
      appBar: AppBar(
        title:  Text('1'.tr),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                onPressed: (){
                  controller.changeLang('ar');
                },
                color: Colors.red,
                child: Text("2".tr),
                ),

            ),
            Center(
              child: MaterialButton(
                onPressed: (){
                  controller.changeLang('en');
                },
                color: Colors.red,
                child: Text("3".tr),
                ),

            )
          ],
        ),
      )
    );
  }
}