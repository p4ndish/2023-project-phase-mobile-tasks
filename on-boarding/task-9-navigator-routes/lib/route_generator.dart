import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/pages/create_task.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/task_detail.dart';
import 'package:todo/pages/todo_list.dart';
import 'package:todo/todo_manager.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      

      case '/create_task':
        return MaterialPageRoute(builder: (_) => createTask()); // Navigate to createTask page

      case '/list_todos':
        return MaterialPageRoute(builder: (_) => TaskLists());
      case '/edit_task':
        return MaterialPageRoute(builder: (_) => TaskDetail());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
