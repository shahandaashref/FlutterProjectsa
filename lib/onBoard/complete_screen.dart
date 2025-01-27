import 'package:flutter/material.dart';
import 'package:my_flutter_app/Constant.dart';
import 'package:my_flutter_app/pages/Homepage.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //---circle on the right top---//
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  top: -40,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(162, 46, 132, 135),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Complete",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: maincolor,
            ),
          ),
          Image.asset("images/login.jpg", height: 300),

          Text(
            "Hello there,\n ",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: maincolor,
            ),
          ),
        Text(
            "complete your profile to get a \n personlized  feeds ",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              color: maincolor,
            ),
          ),
SizedBox( height: 20,),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: maincolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("Complete", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ),
SizedBox( height: 20,),
          Center(
            child: Text("Skip",
                style: TextStyle(
                  fontSize: 15,
                  color: maincolor,
                  decoration: TextDecoration.underline,
                  decorationColor: maincolor,
                ),
                ),
          ),
          
    ]),
    );
  }}







  //Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          //   child: TextField(
          //     keyboardType: TextInputType.emailAddress,
          //     decoration: InputDecoration(
          //       fillColor: maincolor.withOpacity(0.1),
          //       filled: true,
          //       hintText: "Email",
          //       hintStyle: TextStyle(
          //         color: maincolor,
          //       ),
          //       prefixIcon: Icon(Icons.email),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          //   child: TextField(
          //     obscureText: true,
          //     decoration: InputDecoration(
          //       fillColor: maincolor.withOpacity(0.1),
          //       filled: true,
          //       hintText: "Password",
          //       hintStyle: TextStyle(
          //         color: maincolor,
          //       ),
          //       prefixIcon: Icon(Icons.lock),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          //   child: TextField(
          //     obscureText: true,
          //     decoration: InputDecoration(
          //       fillColor: maincolor.withOpacity(0.1),
          //       filled: true,
          //       hintText: "Confirm Password",
          //       hintStyle: TextStyle(
          //         color: maincolor,
          //       ),
          //       prefixIcon: Icon(Icons.lock),
          //     ),
          //   ),
          // ),