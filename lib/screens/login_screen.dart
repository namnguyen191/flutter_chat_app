import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/logo.png',
                width: kLogoSizeMedium,
                scale: 1,
              ),
            ),
            kLargeGap,
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            kSmallGap,
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            kMediumGap,
            RoundedButton(
              title: 'Login',
              color: Colors.blueAccent,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
