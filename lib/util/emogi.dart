import 'package:flutter/material.dart';

class EmogiFace extends StatelessWidget {
  final String emogi;
  const EmogiFace({super.key, required this.emogi});

  @override
  Widget build(BuildContext context) {
    return   Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text(emogi,style: TextStyle(
                        fontSize:28, 
                      ),),),
                    );
  }
}