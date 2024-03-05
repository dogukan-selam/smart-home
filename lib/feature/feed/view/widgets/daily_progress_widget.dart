import 'package:flutter/material.dart';

class DailyProgressWidget extends StatelessWidget {
  const DailyProgressWidget({required this.progress, super.key});

  final int progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.red,
      child: Center(child: Text(progress.toString())),
    );
  }
}
