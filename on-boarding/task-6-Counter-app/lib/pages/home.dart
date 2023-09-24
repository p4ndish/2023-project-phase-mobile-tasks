import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int value = 0;


  void add() {
    setState(() {
      if(value >= 10){
        value = 0 ;
      }else{
      value += 1;
      }
    });
  }


  void subtract() {
    setState(() {
      if(value == 0){
        value = 10 ;
      }else{
      value -= 1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 61, 123, 156),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 245, 152, 109), Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          
          "Counter App",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
          ),
      ),

      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Value: $value',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
            ),
            ),


            SizedBox(
              height: 40.0,
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                
                FloatingActionButton(
                  
                  onPressed: () {
                    subtract()  ;
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.remove, color: Colors.white,),
                ),

                SizedBox(width: 50.0,),

                FloatingActionButton(
                  
                  onPressed: () {
                    add()  ;
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.add, color: Colors.white,),
                )
              ],
            )
          ],

        ),
      ),
    );
  }
}