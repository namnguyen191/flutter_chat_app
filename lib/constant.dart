import 'package:flutter/material.dart';

const kAppTitle = Text('Flutter Chat App');

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kAppDarkTextTheme = TextTheme(
  bodyText1: TextStyle(color: Colors.black54),
);

const kMainHeadingText = TextStyle(
  fontSize: 50,
  color: Colors.lightBlue,
);

const double kLogoSizeSmall = 50;
const double kLogoSizeMedium = 120;

const kSmallGap = SizedBox(
  height: 15,
);
const kMediumGap = SizedBox(
  height: 35,
);
