import 'package:flutter_gpt/constants.dart';
import 'package:flutter/material.dart';

import '../signInOrSignUp/signin_or_signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(flex: 2),
          Image.asset('assets/images/welcome_image.png'),
          const Spacer(flex: 3),
          Text(
            textAlign: TextAlign.center,
            'Welcome to our \nGPT App',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
              textAlign: TextAlign.center,
              "Feel free to ask me questions,\n share your thoughts, or just chat.",
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.color
                      ?.withOpacity(0.64))),
          const Spacer(flex: 3),
          FittedBox(
            child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SigninOrSignupScreen())),
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.color
                              ?.withOpacity(0.64)),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.color
                          ?.withOpacity(0.8),
                    )
                  ],
                )),
          )
        ],
      )),
    );
  }
}
