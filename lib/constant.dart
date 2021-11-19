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

const kExtraSmallGap = SizedBox(
  height: 8,
);
const kSmallGap = SizedBox(
  height: 15,
);
const kMediumGap = SizedBox(
  height: 35,
);
const kLargeGap = SizedBox(
  height: 50,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
