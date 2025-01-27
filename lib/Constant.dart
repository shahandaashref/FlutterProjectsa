import 'package:flutter/material.dart';




const Color maincolor =Color.fromARGB(255, 17, 119, 135); 
const Color circalcolor =Color.fromARGB(255, 39, 137, 152);


class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: active ? Colors.blue : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
