

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: ReusableScreenContent(
        imagePath: 'images/SitReadingDoodle (1).png',
        title: 'Get Ready to Start!',
        subtitle: 'Launch now and explore all the amazing features we have to offer.',
      ),
    );
  
  }


}