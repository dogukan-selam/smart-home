import 'package:flutter/material.dart';

import '../../../../product/theme/app_theme.dart';

class CategoryGridTile extends StatelessWidget {
  const CategoryGridTile({
    required this.title,
    required this.taskCount,
    required this.categoriesIcon,
    required this.userImage,
    required this.progress,
    required this.goal,
    this.iconBackgroundColor = AppTheme.primary,
    super.key,
  });

  final String title;
  final int taskCount;
  final Color iconBackgroundColor;
  final IconData categoriesIcon;
  final String userImage;
  final double progress;
  final double goal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: iconBackgroundColor,
                  ),
                  child: Icon(
                    categoriesIcon,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    userImage,
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '$taskCount New Tasks',
            style: TextStyle(color: Colors.grey[600]),
          ),
          Text(
            title,

            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const Spacer(flex: 3,),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: progress / goal,
                  backgroundColor: Colors.white,
                  color: AppTheme.primary,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                margin: const EdgeInsets.only(left: 12),
                alignment: Alignment.center,
                child: Text(
                  '$progress/$goal',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
