import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String avatarUrl;

const ChatBubble({super.key, required this.message, required this.isMe, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        //photo of sender
        if (!isMe) 
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
            radius: 20,
          ),
        SizedBox(width: 8),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe ? Colors.blue[300] : Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: isMe ? Radius.circular(15) : Radius.circular(0),
                bottomRight: isMe ? Radius.circular(0) : Radius.circular(15),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(color: isMe ? Colors.white : Colors.black, fontSize: 16),
            ),
          ),
        ),
        //photo of sender
        if (isMe) 
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
            radius: 20,
          ),
      ],
    );
  }
}
