import'package:flutter/material.dart';
import 'package:myproject/App.dart';

void main() {
  runApp( MyApp());     
}     
  
class MyApp extends StatelessWidget {  

  const MyApp ({ super.key });


   @override  
   Widget build(BuildContext context) {
       return MaterialApp(
        home: Scaffold(
           body: Column(children: [ Text("login page"), 
           SizedBox(height: 50,),
           Container(
            width: 500,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: 'enter your username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
           ),
           SizedBox(height: 40,),
           Container(
            width: 500,
            child: TextField(decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),),
           ),
           SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
             
              Navigator.push(context, MaterialPageRoute(builder: (context)=> App()),);
            }, child: Text("Login")),
           ],
           ),
           
           ),
       );   
  }
}