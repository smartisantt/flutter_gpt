import 'package:chatgpt/constants.dart';
import 'package:chatgpt/models/chat_message_model.dart';
import 'package:chatgpt/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

import 'chat_input_fields.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context, index) => Message(message: demeChatMessages[index]),
          ),
        )),
        const ChatInputField()
      ],
    );
  }
}
