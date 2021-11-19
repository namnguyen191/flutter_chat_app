import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constant.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  String email = '';
  String password = '';

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
                height: kLogoSizeMedium,
                scale: 1,
              ),
            ),
            kLargeGap,
            TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your email',
                )),
            kSmallGap,
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            kMediumGap,
            RoundedButton(
              title: 'Register',
              color: Colors.blueAccent,
              onPressed: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);

                  Navigator.pushNamed(context, ChatScreen.id);
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
