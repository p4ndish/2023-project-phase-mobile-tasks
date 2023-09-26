import 'package:flutter/material.dart';
import 'package:todo/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(  
        title: Text(
          "Welcome",
          

        ),
        backgroundColor: Colors.black87,
        centerTitle: true,

        
      ),


      body: Container(  
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(  
          image: DecorationImage(
            image: AssetImage("assets/home_one.jpeg"),
            fit: BoxFit.cover,
          )
        ),

        child: Container(
          alignment: Alignment(0.2, 0.9),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              alignment: Alignment(111, 0)
            ),
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 40),
        
              
            ),
            
            onPressed: () => {
              Navigator.push(context, 
              MaterialPageRoute(
                
                builder: (context) => LoginPage())),
            },
          ),
        ),
      )
    );
  }
}