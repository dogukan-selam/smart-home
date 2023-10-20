import 'package:flutter/material.dart';

class BaseAssetImage extends StatelessWidget {
  const BaseAssetImage({
    required this.path,
    super.key,
    this.height,
    this.width,
    this.fit,
  });

  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
