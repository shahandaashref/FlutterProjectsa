

import 'package:flutter/material.dart';
import 'package:my_flutter_app/onBoard/ThreepageContant.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
return SingleChildScrollView(
  child: ReusableScreenContent(
        imagePath: 'images/ReadingSideDoodle (2).png',
        title: 'Easy to Learn, Fun to Use!',
        subtitle: 'Enjoy a seamless experience while exploring new opportunities.',
      ),
);
  }

}