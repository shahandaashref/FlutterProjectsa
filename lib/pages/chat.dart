import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_app/util/massage.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final TextEditingController _messageController = TextEditingController();
    String userInput = "";

  
  List<Map<String, dynamic>> messages = [
  //     {"message": "Hi, how are you?", "isMe": false},
  // {"message": "I'm good, thanks! How about you?", "isMe": false},
  // {"message": "I'm doing well, just learning Flutter!", "isMe": false},
  // {"message": "That's great! Keep it up!", "isMe": false},
  // {"message": "I will, thanks!", "isMe": false},
  ];

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      String userInput = _messageController.text.trim();

      setState(() {
        messages.insert(0, {
          "message": userInput,
          "isMe": true, // 🛑 هذه الرسالة من المستخدم
        });

        _messageController.clear();
      });

      // 🛑 إضافة رد تلقائي من الشخص الآخر بعد ثانيتين
      Future.delayed(Duration(seconds: 2), () {
        String botResponse = getBotResponse(userInput);
        setState(() {
          messages.insert(0, {
            "message": botResponse,
            "isMe": false, // 🛑 هذه الرسالة من الشخص الآخر
          });
        });
      });
    }
  }

  String getBotResponse(String input) {
  input = input.toLowerCase(); // نجعل النص كله حروف صغيرة للمقارنة بسهولة

  if (input.contains("hello") || input.contains("hi")) {
    return "Hi! How are you?";
  } else if (input.contains("how are you")) {
    return "I'm just a bot, but I'm doing great!";
  } else if (input.contains("what's your name") || input.contains("who are you")) {
    return "I'm your chatbot friend! 😊";
  } else if (input.contains("bye")) {
    return "Goodbye! Have a great day! 👋";
  } else {
    return "Sorry, I didn't understand that. Can you rephrase?";
  }
}

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
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Shahanda",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(10)),
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
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        reverse: true, // آخر رسالة تكون في الأسفل
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return ChatBubble(
                            message: messages[index]["message"],
                            isMe: messages[index]["isMe"],
                            avatarUrl: messages[index]["isMe"]
                                ? "https://example.com/myphoto.jpg"
                                : "https://example.com/userphoto.jpg",
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _messageController,
                              decoration: InputDecoration(
                                fillColor: Colors.white70,
                                filled: true,
                                hintText: "Type a message...",
                                hintStyle:
                                    TextStyle(color: Colors.grey[600]),
                                prefixIcon: Icon(Icons.add_a_photo,
                                    color: Colors.blue[600]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: sendMessage,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.send, color: Colors.white),
                            ),
                          ),
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
