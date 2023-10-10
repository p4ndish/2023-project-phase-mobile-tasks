import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo/main.dart' as main;
import 'package:todo/pages/task_detail.dart';
import 'package:todo/todo_manager.dart';
import 'package:todo/todo_db.dart';
import 'package:todo/utils/todo_tiles.dart';

class TaskLists extends StatefulWidget {
  const TaskLists({super.key});

  @override
  State<TaskLists> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  final myBox = Hive.box('taskdb');
  Todo db = Todo();

  @override
  void initState() {
    // if this is the 1st time ever openin the app, then create default data
    if (myBox.get("taskLists") == null) {
      db.createInitialData();
    } else {
      // there already exists data

      db.loadData();
    }

    super.initState();
  }

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoLists[index][3] = !db.todoLists[index][3];
    });
    db.updateDataBase();
  }


  // create a new task

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.todoLists.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 43,
            ),
            color: Colors.orange,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          "Todo Lists",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 14),
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 43,
              ),
              color: Colors.orange,
              onPressed: () {},
            ),
          ),
        ],
      ),
      


      body: ListView.builder(
        itemCount: db.todoLists.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.todoLists[index][0],
            taskDesc: db.todoLists[index][1],
            dueDate: db.todoLists[index][2],
            taskCompleted: db.todoLists[index][3],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },


      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Task",
        onPressed: () {
          Navigator.pushNamed(context, "/create_task");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
