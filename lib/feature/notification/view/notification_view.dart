import 'package:flutter/material.dart';

import '../../../product/fake/notification/notifications.dart';
import '../model/notification_model.dart';
import 'widgets/notification_list_tile.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
          itemCount: FakeNotifications.notifications.length,
          itemBuilder: (ctx, i) {
            final NotificationModel notification =
                FakeNotifications.notifications[i];
            return NotificationListTile(notification:notification);
          }),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      ),
      title: const Text(
        'Notifications',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
