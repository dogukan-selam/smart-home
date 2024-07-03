import 'package:flutter/material.dart';

import '../../../../product/theme/app_theme.dart';

class DailyProgressWidget extends StatelessWidget {
  const DailyProgressWidget({required this.progress, super.key});

  final int progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey[300]!,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 170,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily Progress',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                backgroundColor: AppTheme.primary,
                radius: 18,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Text('Track your daily task progress here'),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 8),
            child: Text('$progress%',
                style: const TextStyle(fontWeight: FontWeight.bold),),
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.white,
            value: progress / 100,
            color: AppTheme.primary,
          ),
        ],
      ),
    );
  }
}
