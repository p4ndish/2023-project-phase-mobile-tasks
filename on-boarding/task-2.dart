import 'dart:io';
  
  
class TODO {
  
  String title;
  String description;
  DateTime dueDate;
  bool completed;
  
  TODO(this.title, this.description, this.dueDate, this.completed);
//   TODO(String title, String description, DateTime dueDate, bool completed) {
//     this.title = title;
//     this.description = description;
//     this.dueDate = dueDate;
//     this.completed = completed;
//   }
  
  
}


class TaskManager {
  List<TODO> todos = [];
  
  
  // add function
  void addTask(String title, String description, DateTime dueDate){
    todos.add(TODO(title, description, dueDate, false));
    print("Todo Added.");
  }
  
  // edit function
  void editTask(int id, String? newTitle, String? newDescription, DateTime? newDueDate, bool? newStatus) {
      if (id >= 0 && id < todos.length) {
        if (newTitle != null) {
          todos[id].title = newTitle;
        }
        if (newDescription != null) {
          todos[id].description = newDescription;
        }
        if (newDueDate != null) {
          todos[id].dueDate = newDueDate;
        }
        if (newStatus != null) {
          todos[id].completed = newStatus;
        }
        print('Updated.');
      } else {
        print('Something went wrong!');
      }
}

  
  
  // view all 
  void view_all(){
    if (todos.isEmpty) {
      print('No tasks found.');
    } else {
      for (var i = 0; i < todos.length; i++) {
        print("\n------------------------------------------------------------");
        print('Task $i:\nTitle: ${todos[i].title}\ndescription: ${todos[i].description}\ndue Date: ${todos[i].dueDate}\ncompleted: ${todos[i].completed}');
        print("________________________________________________________________\n");
      }
    }
    
  }
  
  
  // view pending
  void view_pending(){
    if (todos.isEmpty) {
      print('No tasks found.');
    } else {
      for (var i = 0; i < todos.length; i++) {
        if(!todos[i].completed){

        print("________________________________________________________________\n");
         print('Task $i:\nTitle: ${todos[i].title}\ndescription: ${todos[i].description}\ndue Date: ${todos[i].dueDate}\ncompleted: ${todos[i].completed}');
        print("________________________________________________________________\n");
        }
      }
    }    
  }
  
  
  // view completed
  void view_completed(){
    if (todos.isEmpty) {
      print('No tasks found.');
    } else {
      for (var i = 0; i < todos.length; i++) {
        if(todos[i].completed){

        print("________________________________________________________________\n");
         print('Task $i:\nTitle: ${todos[i].title}\ndescription: ${todos[i].description}\ndue Date: ${todos[i].dueDate}\ncompleted: ${todos[i].completed}'); 

        print("________________________________________________________________\n");
        }
      }
    }
  }
  
  // delete function
  void delete_task(int id){
    if (todos.isEmpty) {
      print('No tasks to delete.');
    } else {
      for (var i = 0; i < todos.length; i++) {
        if(i == id){
          todos.removeAt(i);
         print('Task $i: Deleted.'); 
        }
      }
    }
  }
  
  
}



void main() {
  final taskManager = TaskManager();

  while (true) {
    print('Options:');
    print('1. Add a task');
    print('2. Edit a task');
    print('3. Delete a task');
    print('4. View all tasks');
    print('5. View completed tasks');
    print('6. View pending tasks');
    print('7. Quit');

    print('Enter your choice (1-7):');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // Add a task
        print('Enter task title:');
        var title = stdin.readLineSync();
        print('Enter task description:');
        var description = stdin.readLineSync();
        print('Enter due date (yyyy-mm-dd):');
        var dueDateString = stdin.readLineSync();
        var dueDate = DateTime.tryParse(dueDateString ?? '');

        if (title != null && description != null && dueDate != null) {
          taskManager.addTask(title, description, dueDate);
          print('Task added.');
        } else {
          print('Something went wrong.');
        }
        break;

      case '2':
        // Edit a task
        print('Enter the index of the task to edit:');
        var indexString = stdin.readLineSync();
        var index = int.tryParse(indexString ?? '');

        if (index != null) {
          print('Enter new task title:');
          var newTitle = stdin.readLineSync();
          print('Enter new task description:');
          var newDescription = stdin.readLineSync();
          print('Enter new due date (yyyy-mm-dd):');
          var newDueDateString = stdin.readLineSync();
          var newDueDate = DateTime.tryParse(newDueDateString ?? '');

          print('Is the task completed? (true/false):');
          var newStatusString = stdin.readLineSync();
          var newStatus = newStatusString?.toLowerCase() == 'true';

          taskManager.editTask(index, newTitle, newDescription, newDueDate, newStatus);
          print('Task edited.');
        } else {
          print('Invalid index.');
        }
        break;

      case '3':
        // Delete a task
        print('Enter the index of the task to delete:');
        var indexString = stdin.readLineSync();
        var index = int.tryParse(indexString ?? '');

        if (index != null) {
          taskManager.delete_task(index);
        } else {
          print('Invalid index.');
        }
        break;

      case '4':
        // View all tasks
        print("\n\n");
        taskManager.view_all();
        print("\n\n");
        break;

      case '5':
        // View completed tasks
        print("\n\n");
        taskManager.view_completed();
        print("\n\n");
        break;

      case '6':
        // View pending tasks
        print("\n\n");
        taskManager.view_pending();
        print("\n\n");
        
        break;

      case '7':
        // Quit the program
        print('Goodbye!');
        exit(0);

      default:
        print('Invalid choice. Please enter a valid option (1-7).');
    }
  }
}

// void main(){
    
    // 
    
    
    
  // add task 
//   final taskManager = TaskManager();
//   var title = "t-1";
//   var description = "sdflksjdf lksjdf slkddjfd ";
//   DateTime dueDate = DateTime.now();
//   taskManager.addTask(title, description, dueDate);
//   taskManager.view_all();
//   print("-----------------------\n\n");
  
//   print(true == true);
//   print('Enter task title:');
//   var title = stdin.readLineSync();
//   print('Enter task description:');
//   var description = stdin.readLineSync();
//   print('Enter due date (yyyy-mm-dd):');
//   var dueDateString = stdin.readLineSync();
//   var dueDate = DateTime.tryParse(dueDateString ?? '');;

//   if (title != null && description != null && dueDate != null) {
//     taskManager.addTask(title, description, dueDate);
//     taskManager.view_all();
//   }else{
//     print("someting went wrong!!!");
//   }
  
  // edit task 
//   print('Enter the index of the task to edit:');
//         var indexString = stdin.readLineSync();
//         var index = int.tryParse(indexString ?? '');

//         if (index != null) {
//           print('Enter new task title:');
//           var newTitle = stdin.readLineSync();
//           print('Enter new task description:');
//           var newDescription = stdin.readLineSync();
//           print('Enter new due date (yyyy-mm-dd):');
//           var newDueDateString = stdin.readLineSync();
//           var newDueDate = DateTime.tryParse(newDueDateString ?? '');

//           print('Is the task completed? (true/false):');
//           var newStatusString = stdin.readLineSync();
//           var newStatus = newStatusString?.toLowerCase() == 'true';

//           taskManager.editTask(index, newTitle, newDescription, newDueDate, newStatus);
//         } else {
//           print('Invalid index.');
//         }

  
  // delete task 
//   taskManager.delete_task(0);


  // view all 
//   taskManager.view_all();
  
  // view only completed
//   taskManager.view_completed();

  // view only pending
//   taskManager.view_pending();
  
  
// }
