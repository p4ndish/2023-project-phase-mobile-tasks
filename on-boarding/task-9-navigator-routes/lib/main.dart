import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/todo_list.dart';
import 'package:todo/route_generator.dart';
import 'package:todo/todo_manager.dart';
import 'package:todo/todo_db.dart';

void main() async {
  await Hive.initFlutter();

  var box = Hive.openBox("taskdb");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePage( ),
    );
  }
}
