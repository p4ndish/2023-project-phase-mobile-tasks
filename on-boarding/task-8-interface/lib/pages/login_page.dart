import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo/pages/create_task.dart';
import 'package:todo/pages/task_detail.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              Navigator.pop(context);
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
            margin: EdgeInsets.only(top: 19, left: 20),
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
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Shadow color with opacity
                              spreadRadius: 2, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset:
                                  Offset(1, 1), // Offset in x and y directions
                            ),
                          ],
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                  left: 15,
                                ),
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      // color: Colors.black,
                                      width: 10, // Width of the stick
                                      height: 30, // Height of the stick
                                      child: Text(
                                        'U',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 22,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 40, right: 40),
                                      child: Text(
                                        'UI/UX App \n design',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(right: 10),
                                      width: 100, // Width of the stick
                                      height: 50, // Height of the stick
                                      margin: EdgeInsets.only(left: 60),
                                      child: Text(
                                        'Apr 20, 2023',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 5, // Width of the stick
                                      height: 50, // Height of the stick
                                      color: Color.fromARGB(255, 161, 52,
                                          52), // Color of the stick
                                      margin: EdgeInsets.only(left: 0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 370, // Set the desired width
                  height: 80, // Set the desired height
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Shadow color with opacity
                              spreadRadius: 2, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset:
                                  Offset(1, 1), // Offset in x and y directions
                            ),
                          ],
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                  left: 15,
                                ),
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      // color: Colors.black,
                                      width: 10, // Width of the stick
                                      height: 30, // Height of the stick
                                      child: Text(
                                        'V',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 22,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 40, right: 40),
                                      child: Text(
                                        'Testing the \napp',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(right: 10),
                                      width: 100, // Width of the stick
                                      height: 50, // Height of the stick
                                      margin: EdgeInsets.only(left: 60),
                                      child: Text(
                                        'Apr 29, 2023',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 5, // Width of the stick
                                      height: 50, // Height of the stick
                                      color: Color.fromARGB(255, 161, 52,
                                          52), // Color of the stick
                                      margin: EdgeInsets.only(left: 0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 370, // Set the desired width
                  height: 80, // Set the desired height
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Shadow color with opacity
                              spreadRadius: 2, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset:
                                  Offset(1, 1), // Offset in x and y directions
                            ),
                          ],
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(
                                  left: 15,
                                ),
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      // color: Colors.black,
                                      width: 10, // Width of the stick
                                      height: 30, // Height of the stick
                                      child: Text(
                                        'F',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 22,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 40, right: 40),
                                      child: Text(
                                        'View \nCandidates',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.only(right: 10),
                                      width: 100, // Width of the stick
                                      height: 50, // Height of the stick
                                      margin: EdgeInsets.only(left: 60),
                                      child: Text(
                                        'Apr 28, 2023',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 5, // Width of the stick
                                      height: 50, // Height of the stick
                                      color: Color.fromARGB(255, 161, 52,
                                          52), // Color of the stick
                                      margin: EdgeInsets.only(left: 0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 0),
                width: 322,
                height: 50,
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent[400],
                        alignment: Alignment(111, 0)),
                    child: Center(
                      child: Text(
                        "Create task",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaskDetail())),
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
