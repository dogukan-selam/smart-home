import 'package:flutter/material.dart';

import '../../model/notification_model.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    required this.notification,
    super.key,
  });

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      height: 70,
      width: 10,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(18),),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.notifications,
                    size: 34,
                  ),
                ),
                Text(notification.title),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_right),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
