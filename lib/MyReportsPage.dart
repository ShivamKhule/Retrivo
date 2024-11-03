import 'package:flutter/material.dart';

class Myreportspage extends StatelessWidget {
  const Myreportspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),),
      ),
      body: Center(
        child: const Text(
          "My Reports Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
