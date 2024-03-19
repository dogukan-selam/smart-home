import 'package:flutter/material.dart';

import '../../../product/theme/app_theme.dart';

class BaseElevatedButton extends StatelessWidget {
  const BaseElevatedButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    super.key,
  });

  final String text;
  final void Function() onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? AppTheme.primary),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? Colors.white),
      ),
    );
  }
}
