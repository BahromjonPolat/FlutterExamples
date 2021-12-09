import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as ltz;
import 'package:get/route_manager.dart';

class NotificationService {
  NotificationService._internal();

  static final NotificationService _notificationService =
      NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    print(Platform.localeName);
    ltz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('America/Detroit'));
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    IOSInitializationSettings iosInitializationSettings =
        const IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: _selectedNotification,
    );
  }

  final AndroidNotificationDetails _androidNotificationDetails =
      const AndroidNotificationDetails(
    '1',
    'channelName',
    playSound: true,
    color: Colors.amber,
    importance: Importance.max,
  );

  final IOSNotificationDetails _iosNotificationDetails =
      const IOSNotificationDetails(
    subtitle: "Hello",
    badgeNumber: 0,
    presentSound: true,
  );

  Future<void> showNotification(int id, String title, String body) async {
    await flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        NotificationDetails(
          android: _androidNotificationDetails,
          iOS: _iosNotificationDetails,
        ));
  }

  Future<void> scheduleNotifications(int id, String title, String body) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10)),
      NotificationDetails(
        android: _androidNotificationDetails,
        iOS: _iosNotificationDetails,
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  void _selectedNotification(String? playLoad) {
    Get.to(GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Page"),
        ),
      ),
    ));
  }
}
