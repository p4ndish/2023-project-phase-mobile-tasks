import 'package:flutter/material.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          child: Text("Task Detail",
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


      // text area
      body: Column(
        children: [
          Container(  
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/home2.jpeg',
              fit: BoxFit.cover,
              ),
      
          ),



          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10, top: 20, bottom: 4),
            child: Text(  
              "Title",
              style: TextStyle( 
                fontSize: 19
              ),
            ),

          ),

          Container(

            width: 370, 
            decoration: BoxDecoration(
              color: Color(0xFFF1EEEE), // Use the desired color
            ),
            margin: EdgeInsets.only(bottom: 10),
            child: TextField(
              
              enabled: false, // Make it non-editable
              maxLines: null, // Allow multiple lines
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              controller: TextEditingController(
                
                text: 'UI/UX App Design',
                
              ),
            ),
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(  
              "Description",
              style: TextStyle(  
                fontSize: 19
              ),
            ),

          ),

          Container(

            width: 370, // Set the desired width
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFF1EEEE), 
            ),
            child: TextField(
              enabled: false, // Make it non-editable
              maxLines: null, // Allow multiple lines
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              controller: TextEditingController(
                text: 'First I have to animate the logo\n and prototyping my design. It’s \nvery important.',
              ),
            ),
          ),




        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(  
              "Deadline",
              style: TextStyle(  
                fontSize: 19
              ),
            ),

          ),

          Container(

            width: 370, 
            decoration: BoxDecoration(
              color: Color(0xFFF1EEEE), // Use the desired color
            ),
            child: TextField(
              
              enabled: false, // Make it non-editable
              maxLines: null, // Allow multiple lines
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              controller: TextEditingController(
                text: 'April. 29, 2023',
              ),
            ),
          )

        ],
        
        )
      
      
      



    );
  }
}