import 'package:flutter/material.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/image/base_asset_image.dart';
import 'preferences_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              context.push(const PreferencesView());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
              height: 150,
              width: 150,
              child: BaseAssetImage(path: ImageConstants.welcomeIllustration),
            ),
          ),
          const SettingsTitleValue(
              title: 'Email',
              value: 'slmdogukan79@gmail.com',
              isUnderline: true,),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Divider(),
          ),
          const SettingsTitleValue(
            title: 'Phone',
            value: '+90 544 316 30 76',
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Divider(),
          ),
          const SettingsTitleValue(
            title: 'Location',
            value: 'İstanbul ,Türkiye',
          ),
          const Padding(
            padding: EdgeInsets.only(top: 34, left: 24),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Permissions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),),
          ),
          const PermissionsRow(
            title: 'Save Data',
            icon: Icons.save,
          ),
          const PermissionsRow(
            title: 'Allow Location',
            icon: Icons.location_history,
          ),
          const PermissionsRow(
            title: 'Enable Face ID',
            icon: Icons.face,
          ),
        ],
      ),
    );
  }
}

class SettingsTitleValue extends StatelessWidget {
  const SettingsTitleValue({
    required this.title,
    required this.value,
    this.isUnderline = false,
    super.key,
  });

  final String title;
  final String value;
  final bool isUnderline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                decoration: isUnderline ? TextDecoration.underline : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PermissionsRow extends StatelessWidget {
  const PermissionsRow({
    required this.title,
    required this.icon,
    super.key,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(icon),
          ),
          Expanded(child: Text(title)),
          Switch(value: true, onChanged: (bool value) {}),
        ],
      ),
    );
  }
}
