
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SlidList.dart/curdfire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Padding(
            padding: const EdgeInsets.only(left:170),
            child: Container(
              
              child: ElevatedButton(
                onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StudentData()));
                              }, 
                
                child: Text("CURD")),
            ),
          ),
        ],
      ),
     
    );
  }
}  