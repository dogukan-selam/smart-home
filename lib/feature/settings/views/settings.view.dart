import 'package:flutter/material.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/widgets/image/base_asset_image.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 150,
              width: 150,
              child: BaseAssetImage(path: ImageConstants.welcomeIllustration),
            ),
          ),
          SettingsTitleValue(
              title: "Email",
              value: "slmdogukan79@gmail.com",
              isUnderline: true),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          SettingsTitleValue(
            title: "Phone",
            value: "+90 544 316 30 76",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          SettingsTitleValue(
            title: "Location",
            value: "İstanbul ,Türkiye",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 34,left: 24),
            child: Align(child: Text("Permissions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18

            )),alignment: Alignment.centerLeft),
          ),
          PermissionsRow(
            title: 'Save Data',
            icon: Icons.save,
          ),
          PermissionsRow(
            title: 'Allow Location',
            icon: Icons.location_history,
          ),
          PermissionsRow(
            title: 'Enable Face ID',
            icon: Icons.face,
          )
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
                style: TextStyle(fontSize: 16),
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
                  decoration: isUnderline ? TextDecoration.underline : null,),

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
          Switch(value: true, onChanged: (bool value) {})
        ],
      ),
    );
  }
}
