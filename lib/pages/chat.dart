import 'package:flutter/material.dart';
import 'package:my_flutter_app/util/massage.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});
  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Colors.blue[600], borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:Icon(Icons.arrow_back), color: Colors.white),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Jared", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(color: Colors.blue[600], borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.call, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(child: Column(
                        children: [
                          ChatBubble(message: "Hello!", isMe: true, avatarUrl: "https://example.com/myphoto.jpg"),
                          ChatBubble(message: "Hi there!", isMe: false, avatarUrl: "https://example.com/userphoto.jpg"),
                        ],
                      )),
                    ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            width: 0.8,
                            child: TextField(
                              controller: _searchController,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                fillColor: Colors.white70,
                                filled: true,
                                hintStyle: TextStyle(color: Colors.white70),
                                prefixIcon: Icon(Icons.add_a_photo, color: Colors.white),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: Icon(Icons.send, color: Colors.blue[600])),
                      ],
                    ),
                  ),
                  ],
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  
