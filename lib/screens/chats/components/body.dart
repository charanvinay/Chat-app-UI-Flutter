import 'package:chat_app_ui/components/filled_outline_button.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/Chat.dart';
import 'package:chat_app_ui/screens/chats/components/chat_card.dart';
import 'package:chat_app_ui/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Messages"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(press: () {}, text: "Active", isFilled: false),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatData(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(chat: chatsData[index]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
