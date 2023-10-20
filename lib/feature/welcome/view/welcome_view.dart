import 'package:flutter/material.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/widgets/image/base_asset_image.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.symmetric(horizontal: 36),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const BaseAssetImage(
                    path: ImageConstants.welcomeIllustration),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SmartHome',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                  Text(
                    'Control your home with ease',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: FloatingActionButton(
                backgroundColor: Colors.deepOrange[700],
                onPressed: () {  },
                child: Icon(Icons.chevron_right),
              ),
            ),
          )
        ],
      ),
    );
  }
}
