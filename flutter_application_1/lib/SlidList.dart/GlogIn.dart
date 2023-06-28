import 'package:flutter/material.dart';
import 'package:flutter_application_1/SlidList.dart/SingUP.dart';
class GlogInscreen extends StatefulWidget {
  const GlogInscreen({super.key});

  @override
  State<GlogInscreen> createState() => _GlogInscreenState();
}

class _GlogInscreenState extends State<GlogInscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: SingleChildScrollView(
         child: Column(
         
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Form(
                  child:Column(
                 
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 150),
                       child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_2_rounded
                              ),
                              labelText: 'Full Name',
                              hintText: 'Full Name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                     ),
                         SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email
                            ),
                            labelText: 'E-mail',
                            hintText: 'E-mail',
                            border: OutlineInputBorder(),
                          ),
                        ),
                         SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.numbers
                            ),
                            labelText: 'Phone No',
                            hintText: 'Phone No',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint_rounded
                            ),
                            labelText: 'Password ',
                            hintText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                         SizedBox(height: 20,),
                         SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){},
                           child: Text("Sign Up",style: TextStyle(fontSize: 20,),)),
                         ),
                              Text("OR",style:TextStyle(fontSize: 20),),
                               SizedBox(height: 5,),
                              SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: OutlinedButton.icon(
                                onPressed: (){},
                                icon: Image(image:AssetImage('assets/images/GG.png'),width: 40,), 
                                label: Text('SIGN IN'),
                                ),
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            TextButton(onPressed: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SingUp()));
                            }, 
                            child: Text.rich(TextSpan( text: "Already have an Account?",
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: 'Login',style: TextStyle(color: Colors.blue))
                            ]

                            ),
                            ),
                            )
                        
                     
                    ],
                  ) ),
              ),
            ),
          ],
         ),
      ),
      ),
       );
       
  }
}