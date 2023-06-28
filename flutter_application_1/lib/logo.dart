import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/loGin.dart';
class logoSreen extends StatefulWidget {
  const logoSreen({super.key});

  @override
  State<logoSreen> createState() => _logoSreenState();
}

class _logoSreenState extends State<logoSreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.push(context, MaterialPageRoute(builder:(context)=>loginscreen(),));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         

      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
            children: [    
                   
              
              Container(
                height:  MediaQuery.of(context).size.height/1,
                           width: MediaQuery.of(context).size.width,
                           decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                                colors: [Color(0xff002581), Color(0xff00AFF2)] 
                                )),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             
                              Padding(
                                
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  width:120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: Color.fromARGB(255, 2, 34, 117)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'DR.',
                                        style: TextStyle(
                                            fontSize: 60,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '+',
                                        style: TextStyle(
                                            height: 0.5,
                                            fontSize: 45,
                                            color: Color.fromARGB(255, 122, 235, 10),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'DR Plus',
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),       
                            ] ,
                            ),
                      ),
                                  
            
            ],
          ),
        ),
      ),

    );
  }
}
