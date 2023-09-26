import 'package:flutter/material.dart';
import 'package:todo/pages/task_detail.dart';

class createTask extends StatelessWidget {
  const createTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        elevation: 0,
        backgroundColor: Colors.white,
        
        automaticallyImplyLeading: false,
        leading :

          IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 43,
              ),
            color: Colors.orange,
            
            
            onPressed:() {
              Navigator.pop(context);
            } ),
        title: Align(
          alignment: Alignment.center,
          child: Text("Create New Page",
          style: TextStyle(
            
            color: Colors.black,
          ),),
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
              onPressed: () {
              },
            ),
          ),
        ],
      ),


    body: Column(
      children: [
        // text : main task name
        Container(
            margin: EdgeInsets.only(top: 20 , left: 21),
            alignment: Alignment.topLeft,
            child: Text(
              'Main Task Name',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Color.fromARGB(255, 237, 178, 3),
                
                 ),
            ), 
      
          ),
        
        
        //// text box : UI/UX app design 
        Container(
                margin: EdgeInsets.only(top: 3),
                child: SizedBox(
                  width: 370, // Set the desired width
                  height: 70, // Set the desired height
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        
                        padding: EdgeInsets.zero, // Remove padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'UI/UX App design',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),






              // text : main task name
              Container(
                margin: EdgeInsets.only(top: 20 , left: 21),
                alignment: Alignment.topLeft,
                child: Text(
                  'Due Date',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Color.fromARGB(255, 237, 178, 3),
                    
                    ),
                ), 
          
              ),



            Container(
              margin: EdgeInsets.only(top: 5),
              child: SizedBox(
                width: 370, // Set the desired width
                height: 70, // Set the desired height
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y directions
                      ),
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero, // Remove padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'April 29, 2023 12:40 ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 110),
                          child: Icon(
                            Icons.calendar_today, // Use the calendar icon
                            size: 24,
                            color: Colors.amber[500], // Adjust the size as needed
                          ),
                        ),
                        SizedBox(width: 10), // Add spacing between text and icon
                      ],
                    ),
                  ),
                ),
              ),
            ),


            // third row
            Container(
                margin: EdgeInsets.only(top: 20 , left: 21),
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Color.fromARGB(255, 237, 178, 3),
                    
                    ),
                ), 
          
              ),


              
            Container(
              margin: EdgeInsets.only(top: 5),
              child: SizedBox(
                width: 370, // Set the desired width
                height: 70, // Set the desired height
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y directions
                      ),
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero, // Remove padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'First i have to animate the logo and later \n prototyping my desgin. it\'s very important',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        
                         // Add spacing between text and icon
                      ],
                    ),
                  ),
                ),
              ),
            ),


        Container(
          margin: EdgeInsets.only(top: 19, left: 0),
          width: 322,
          height: 50,
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                padding: EdgeInsets.all(0), // Remove padding
                primary: Colors.orangeAccent[400],
                alignment: Alignment.center,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskDetail(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "Create task",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),


       
      ],
    ),
    );
    
  }
}