import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E Commerce App",
      home :Scaffold(
        
        body: OnBoardScreen(),
        )
    );
  }
}


