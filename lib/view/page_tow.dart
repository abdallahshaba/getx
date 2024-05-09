import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/page+tow_controole.dart';

class PageTow extends StatelessWidget {
  const PageTow({super.key});

  @override
  Widget build(BuildContext context) {
    PageTwoController controller = Get.put(PageTwoController());
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Page Tow"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text("${controller.name}"),
                  Text("${controller.age}"),
                ],
              ),
              
            ),
          ],
        ),
      )
    );
  }
}