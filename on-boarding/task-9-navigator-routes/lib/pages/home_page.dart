import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/pages/todo_list.dart';
import 'package:todo/todo_manager.dart';

class HomePage extends StatelessWidget {
  // Define todos list here

  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home_one.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment(0.2, 0.9),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              alignment: Alignment(111, 0),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 40),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/list_todos');
            },
          ),
        ),
      ),
    );
  }
}
