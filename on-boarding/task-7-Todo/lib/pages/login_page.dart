import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo/pages/create_task.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(  
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
        title: Text("Todo Lists",
        style: TextStyle(
          color: Colors.black,
        ),),
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
          Container(  
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/home.jpeg',
              fit: BoxFit.cover,
              ),
      
          ),

          
          Container(
            margin: EdgeInsets.only(top: 19),
            alignment: Alignment.topLeft,
            child: Text(
              'Tasks Lists',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                
                 ),
            ), 
      
          ),
      
      
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 370, // Set the desired width
                  height: 80, // Set the desired height
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                          spreadRadius: 2, // Spread radius
                          blurRadius: 9, // Blur radius
                          offset: Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
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




              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 370, // Set the desired width
                  height: 80, // Set the desired height
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                          spreadRadius: 2, // Spread radius
                          blurRadius: 9, // Blur radius
                          offset: Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
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



              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 370, // Set the desired width
                  height: 80, // Set the desired height
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                          spreadRadius: 2, // Spread radius
                          blurRadius: 9, // Blur radius
                          offset: Offset(0, 3), // Offset in x and y directions
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
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

            Container(
              margin: EdgeInsets.only(top: 12,left: 0),
              width: 322,
              height: 50,
              child: Container(
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent[400],
                  alignment: Alignment(111, 0)
                ),
              child: Center(
                child: Text(
                  
                  "Create task",
                  style: TextStyle(fontSize: 20),
                        
                  
                ),
              ),
            
              onPressed: () => {
                Navigator.push(context, 
                MaterialPageRoute(
                  
                  builder: (context) => createTask())),
              },
            ),
          ),

            )
              
            ],
          ),
      
      
      
      
      
          
      
        ],
      ),

      
    );
  }
}