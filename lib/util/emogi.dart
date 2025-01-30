import 'package:flutter/material.dart';

class EmogiFace extends StatelessWidget {
  final String emogi;
  final bool isSelected;
  const EmogiFace({super.key, required this.emogi, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue[800] : Colors.blue[600], // لون مختلف عند التحديد
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (isSelected) // إضافة تأثير ظل عند التحديد
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
            ),
        ],
      ),
      child: Center(
        child: Text(
          emogi,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
