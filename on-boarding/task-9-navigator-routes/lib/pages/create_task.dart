import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo/main.dart';
import 'package:todo/pages/todo_list.dart';
import 'package:todo/todo_db.dart';
import 'package:todo/todo_manager.dart';

class createTask extends StatefulWidget {
  
  const createTask({Key? key}) : super(key: key);

  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<createTask> {
  final titleController = TextEditingController();
  final descController = TextEditingController();
  DateTime? selectedDate;
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
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed.
    titleController.dispose();
    descController.dispose();
    super.dispose();
  }


  void create(){
    setState(() {
      db.todoLists.add([titleController.text, descController.text, selectedDate.toString(), false]);
      titleController.clear();
      descController.clear();

    });
    Navigator.pushNamed(context, "/list_todos");

    db.updateDataBase();
    
    // dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
          },
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Create New Page",
            style: TextStyle(
              color: Colors.black,
            ),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "UI/UX review",
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
              maxLength: 15,
              textInputAction: TextInputAction.next,
            ),

            // description box

            TextField(
              controller: descController,
              decoration: InputDecoration(
                hintText: "review the code that...",
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
              maxLength: 215,
              textInputAction: TextInputAction.next,
            ),

            // calendar box
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: AbsorbPointer(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Due Date",
                    suffixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(),
                  ),
                  controller: TextEditingController(
                    text: selectedDate != null
                        ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                        : '',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: create,
                    child: const Text('Add Task'),
                  ),
                ],
              ),
            ),

            TextButton(
              onPressed: () {
                // Call the create function to add the task
                Navigator.pushNamed(context, "/list_todos");
              },
              child: Text("go back"),
            )

          ],
        ),
      ),
    );
  }
}
