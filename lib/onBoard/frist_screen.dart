

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';

class FristScreen extends StatelessWidget {
  const FristScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: ReusableScreenContent(
        imagePath: 'images/job-7291427_1280.png',
        title: 'Welcome to our app!',
        subtitle: 'Start your journey now and discover the best opportunities tailored just for you.',
      ),
    );
  }

}