import 'package:examples/screens/notification/notification_service.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final NotificationService _notificationService = NotificationService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
    );
  }

  Center _buildBody() => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _setElevatedButton(_onButtonPressed, "Show Notification"),
        ],
      ));

  ElevatedButton _setElevatedButton(VoidCallback onPressed, String label) =>
      ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      );

  void _onButtonPressed()  {
    _notificationService.showNotification(1, "Hello", "This is notification body");
  }
}
