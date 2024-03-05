import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';

class PreferencesView extends StatelessWidget {
  const PreferencesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText(),
          const PreferencesTile(
            title: 'Lighting',
            subtitle: 'Customize lighting settings',
          ),
          const PreferencesTile(
            title: 'Temperature',
            subtitle: 'Customize temperature',
          ),
          const PreferencesTile(
            title: 'Security',
            subtitle: 'Notifications',
          )
        ],
      ),
    );
  }

  Padding titleText() {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Text(
        'Set up your preferences',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        onPressed: () {
          context.pop();
        },
      ),
      elevation: 1,
      title: const Text(
        'SmartHome',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    );
  }
}

class PreferencesTile extends StatelessWidget {
  const PreferencesTile({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset.zero,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                color: Colors.orange,
                Icons.circle_outlined,
                size: 28,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(
              'Adjust',
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
