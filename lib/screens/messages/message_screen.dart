import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/Chat.dart';
import 'package:chat_app_ui/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMethod(),
      body: Body(chat: chat),
    );
  }

  AppBar appbarMethod() {
    return AppBar(
      // automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(chat.image),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active ${chat.time}",
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.local_phone),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
