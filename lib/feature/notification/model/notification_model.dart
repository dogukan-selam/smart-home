class NotificationModel {
  NotificationModel({
    required this.title,
    required this.description,
    required this.isRead,
    required this.type,
  });

  final String title;
  final String description;
  final bool isRead;
  final String type;
}
