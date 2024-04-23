import 'package:flutter_svg/flutter_svg.dart';
import 'package:chatgpt/components/primary_button.dart';
import 'package:chatgpt/constants.dart';
import 'package:flutter/material.dart';

import '../chats/chats_screen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          const Spacer(flex: 2),
          SvgPicture.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? 'assets/images/Logo_light.svg'
                : 'assets/images/Logo_dark.svg',
            height: 100,
          ),
          const Spacer(),
          PrimaryButton(
            text: 'Sign In',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatsScreen()));
            },
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          PrimaryButton(
            color: Theme.of(context).colorScheme.secondary,
            text: 'Sign Up',
            press: () {},
          ),
          const Spacer(flex: 2),
        ],
      ),
    )));
  }
}
