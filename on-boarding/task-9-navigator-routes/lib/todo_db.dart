import 'package:hive/hive.dart';

class Todo {
  List todoLists = [];

  final myBox = Hive.box("taskdb");


  void createInitialData() {
    todoLists = [
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],
      ["Make Tutorial", "make a tutorial about flutter pub", DateTime.now().toString(), false],
      ["Do Exercise", "leg day", DateTime.now().toString(), false],

    ];
  }

  // load the data from database
  void loadData() {
    todoLists = myBox.get("taskLists");

  }

  // update the database
  void updateDataBase() {
    myBox.put("taskLists", todoLists);
  }


}
