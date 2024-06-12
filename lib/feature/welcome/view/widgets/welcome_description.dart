import 'package:flutter/material.dart';

class WelcomeDescription extends StatelessWidget {
  const WelcomeDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'SmartHome',
          style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              fontSize: 36,),
        ),
        Text(
          'Control your home with ease',
          style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.bold,
              fontSize: 20,),
        ),
      ],
    );
  }
}
