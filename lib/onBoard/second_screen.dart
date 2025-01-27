

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
return ReusableScreenContent(
      imagePath: 'images/ReadingSideDoodle (2).png',
      title: 'Ease of Learning and Use!',
      subtitle: 'Our app provides you with a smooth and enjoyable experience to learn and use services effortlessly.',
    );


    //   return Column(
    //   children: [
    //     Image.asset('images/ReadingSideDoodle (2).png',height: 390,),
    //     const Text('Welcome to our app',
    //     textAlign: TextAlign.center,
    //     style: TextStyle(
    //       fontSize: 35,
          
    //       fontWeight: FontWeight.bold,
    //       color: Color.fromARGB(255, 17, 119, 135),
    //     ),
    //     ),
    //     Padding(
    //         padding: EdgeInsets.all(20),
    //         child:Text('This is the first screen',
    //         textAlign: TextAlign.center,
    //         style: TextStyle(
    //         fontSize: 24,
    //         color: Color.fromARGB(255, 4, 35, 40),
    //     ),
    //     ),
    //     ),
      
    //   ],
    // );
  }

}