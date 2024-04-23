import 'package:flutter_gpt/components/filled_outline_button.dart';
import 'package:flutter_gpt/constants.dart';
import 'package:flutter_gpt/models/chat_model.dart';
import 'package:flutter_gpt/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding * 0.75),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recent Message'),
              const SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: ((context, index) => ChatCard(
                  chat: chatsData[index],
                  press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MessagesScreen())),
                )),
          ),
        )
      ],
    );
  }
}
