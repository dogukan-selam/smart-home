import 'package:flutter/material.dart';

import '../../../../core/constants/image_constants.dart';
import '../../../../core/widgets/image/base_asset_image.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: 36),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: const BaseAssetImage(path: ImageConstants.welcomeIllustration),
      ),
    );
  }
}
