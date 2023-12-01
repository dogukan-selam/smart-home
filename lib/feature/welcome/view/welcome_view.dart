import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../notification/view/notification_view.dart';
import 'widgets/welcome_description.dart';
import 'widgets/welcome_image.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: WelcomeImage(),
          ),
          const Expanded(
            child: WelcomeDescription(),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: FloatingActionButton(
                backgroundColor: Colors.deepOrange[700],
                onPressed: () {
                  context.push(const NotificationView());

                },
                child: const Icon(Icons.chevron_right),
              ),
            ),
          )
        ],
      ),
    );
  }
}




