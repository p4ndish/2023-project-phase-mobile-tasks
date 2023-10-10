import 'todo_db.dart';
class TodoManager {
  static final TodoManager _singleton = TodoManager._internal();
  factory TodoManager() {
    return _singleton;
  }

  TodoManager._internal();

  List<Todo> todos = [];

  void addTodo(Todo newTask) {
    todos.add(newTask);
  }


  void removeTodo(Todo todo) {
    todos.remove(todo);
  }
}
