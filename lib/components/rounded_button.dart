import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onPressed;

  const RoundedButton({
    Key? key,
    this.color = Colors.white,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            textColor: Colors.white,
            onPressed: onPressed,
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              title,
            ),
          ),
        ));
  }
}
