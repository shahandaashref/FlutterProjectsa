

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';

class FristScreen extends StatelessWidget {
  const FristScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    return ReusableScreenContent(
      imagePath: 'images/job-7291427_1280.png',
      title: 'Welcome to our app!',
      subtitle: 'Start your journey now and discover the best opportunities tailored just for you.',
    );


    // return Column(
    //   children: [
    //     Image.asset('images/job-7291427_1280.png'),
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