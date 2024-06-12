import 'package:flutter/material.dart';

class CategoryGridTile extends StatelessWidget {
  const CategoryGridTile({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
