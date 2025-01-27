

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return ReusableScreenContent(
      imagePath: 'images/SitReadingDoodle (1).png',
      title: 'Get Ready to Start!',
      subtitle: 'Launch now and explore all the amazing features we have to offer.',
    );
    //   return Column(
    //   children: [
    //     Image.asset('images/SitReadingDoodle (1).png',height: 390,),
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