import 'package:examples/screens/animations/anim_page.dart';
import 'package:examples/screens/expansion/main.dart';
import 'package:examples/screens/get/main.dart';
import 'package:examples/screens/notification/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await NotificationService().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ExpansionTilePage(),
    );
  }
}
