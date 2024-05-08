import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
            child: Text('' , style: TextStyle(fontSize: 30),),
                        ),
            Center(
              child: MaterialButton(
                onPressed: (){
                },

                child: Text("Counter Increase"),
                color: Colors.blue,
                ),
                
            ),
            Center(
              child: MaterialButton(
                onPressed: (){
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