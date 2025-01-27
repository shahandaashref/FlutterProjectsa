import 'package:flutter/material.dart';

class ReusableScreenContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const ReusableScreenContent({super.key, 
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, height: 330),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 119, 135),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 4, 35, 40),
            ),
          ),
        ),
      ],
    );

  }
}

