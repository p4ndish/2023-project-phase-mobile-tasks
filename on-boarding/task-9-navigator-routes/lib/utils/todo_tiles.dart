import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final String taskDesc;
  final String dueDate;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext) deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskDesc,
    required this.dueDate,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Container(
        child: Column(
          children: [
            Container(
              width: 910,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, // Align buttons to the right
                      children: [
                        Checkbox(
                          value: taskCompleted,
                          onChanged: onChanged,
                          activeColor: Colors.black,
                        ),
                        Text(
                          taskName,
                          style: TextStyle(
                            fontSize: 17,
                            decoration: taskCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                        // IconButton(
                        //   iconSize: 30,
                        //   icon: Icon(Icons.edit),
                        //   onPressed: () {
                        //     // Handle edit button press
                        //     Navigator.pushNamed(context, "/edit_task");
                        //     showDialog(context: context, builder: builder)
                        //   },
                        //   color: Colors.blue,
                        // ),
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.delete),
                          onPressed: () => deleteFunction(context),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// Container(   
//               // margin: EdgeInsets.only(left: 130),
//               padding: EdgeInsets.only(left: 130),
//               child: IconButton( 
//                 icon: Icon(Icons.edit_note_sharp),
//                 onPressed: () {},
//               )
//             )




          // Container(
          //     children: [
          //       Container(
          //         margin: EdgeInsets.only(top: 10),


          //         child: SizedBox(
          //           width: 370, // Set the desired width
          //           height: 80, // Set the desired height
          //           child: Column(
          //             children: [
          //               Container(
          //                 decoration: BoxDecoration(
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: Colors.black.withOpacity(
          //                           0.2), // Shadow color with opacity
          //                       spreadRadius: 2, // Spread radius
          //                       blurRadius: 3, // Blur radius
          //                       offset:
          //                           Offset(1, 1), // Offset in x and y directions
          //                     ),
          //                   ],
          //                   color: Color.fromARGB(255, 255, 255, 255),
          //                   borderRadius: BorderRadius.circular(25),
          //                 ),
          //                 child: TextButton(
          //                   onPressed: () {},
          //                   style: TextButton.styleFrom(
          //                     foregroundColor: Colors.black,
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(10),
          //                     ),
          //                   ),
          //                   child: Column(
          //                     children: [
          //                       Container(
          //                         alignment: Alignment.centerLeft,
          //                         margin: EdgeInsets.only(
          //                           left: 15,
          //                         ),
          //                         padding: EdgeInsets.only(top: 10),
          //                         child: Row(
          //                           children: [
          //                             Container(
          //                               // color: Colors.black,
          //                               width: 10, // Width of the stick
          //                               height: 30, // Height of the stick
          //                               child: Checkbox(
          //                                 value: true,
          //                                 onChanged: (value) {
                                            
          //                                 },
          //                                 activeColor: Colors.black,
                                          
          //                               ),
          //                             ),
          //                             Container(
          //                               margin:
          //                                   EdgeInsets.only(left: 40, right: 40),
          //                               child: Text(
          //                                 'UI/UX App \n design',
          //                                 style: TextStyle(
          //                                   fontSize: 15,
          //                                   fontFamily: 'Inter',
          //                                   fontWeight: FontWeight.bold,
          //                                 ),
          //                               ),
          //                             ),
          //                             Container(
          //                               alignment: Alignment.topRight,
          //                               padding: EdgeInsets.only(right: 10),
          //                               width: 100, // Width of the stick
          //                               height: 50, // Height of the stick
          //                               margin: EdgeInsets.only(left: 60),
          //                               child: Text(
          //                                 'Apr 20, 2023',
          //                                 style: TextStyle(
          //                                   fontSize: 12,
          //                                   fontFamily: 'Inter',
          //                                 ),
          //                               ),
          //                             ),
          //                             Container(
          //                               width: 5, // Width of the stick
          //                               height: 50, // Height of the stick
          //                               color: Color.fromARGB(255, 161, 52,
          //                                   52), // Color of the stick
          //                               margin: EdgeInsets.only(left: 0),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),


      
      
      

      
                
          //       Container(
          //         margin: EdgeInsets.only(top: 12, left: 0),
          //         width: 322,
          //         height: 50,
          //         child: Container(
          //           child: ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //                 backgroundColor: Colors.orangeAccent[400],
          //                 alignment: Alignment(111, 0)),
          //             child: Center(
          //               child: Text(
          //                 "Create task",
          //                 style: TextStyle(fontSize: 20),
          //               ),
          //             ),
          //             onPressed: () => {
          //               Navigator.of(context).pushNamed("/create_task",
                        
          //               )
                        
          //             },
          //           ),
          //         ),
          //       )
          //     ],
          //   ),