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
                  if(Get.isDarkMode){
                    Get.changeTheme(AppTheme.lightTheme);
                  } else {
                    Get.changeTheme(AppTheme.darkTheme);
                  }
                },
                color: Colors.blue,
                child: Text("Change Theme" , style: TextStyle(color: Colors.white),),
                ),

            ),
          ],
        ),
      )
    );
  }
}

   class AppTheme { 
    static ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        color: Colors.white
      ),
    );
    static ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        color: Colors.red,
      ));
   }