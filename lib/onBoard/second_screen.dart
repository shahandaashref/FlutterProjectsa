

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
return SingleChildScrollView(
  child: ReusableScreenContent(
        imagePath: 'images/ReadingSideDoodle (2).png',
        title: 'Ease of Learning and Use!',
        subtitle: 'Our app provides you with a smooth and enjoyable experience to learn and use services effortlessly.',
      ),
);
  }

}