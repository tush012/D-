import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SlidList.dart/GlogIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/SlidList.dart/curdfire.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
bool isLoggedIn=false;
String? name;

  get signout => null;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  void _googleSignIn() async{
   final googlesignIn=GoogleSignIn();
   final signInAccount=await googlesignIn.signIn();
   final googleAccountAuthentication=await signInAccount?.authentication;
   final credential=GoogleAuthProvider.credential(accessToken: googleAccountAuthentication?.accessToken,
   idToken: googleAccountAuthentication?.idToken);
   await FirebaseAuth.instance.signInWithCredential(credential);
   if(FirebaseAuth.instance.currentUser!=null)
     {
       print("Google Authentication Successfull");
       print("${FirebaseAuth.instance.currentUser?.displayName}signed in.");
     setState(() {
       isLoggedIn=true;
       name=FirebaseAuth.instance.currentUser?.displayName;
     });
     }
   else{
     print("Unable to sign in");
   }
  }
 
       


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('SignUp'),
      ),
      
      body:SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                       children: [
                        Container(
                          
                          
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email
                              ),
                              labelText: 'NAME',
                              hintText: 'NAME',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                          TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password
                            ),
                            labelText: 'E-MAIL',
                            hintText: 'E-MAIL',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                          decoration: InputDecoration(
                            counterText: '',
                            prefixIcon: Icon(Icons.mobile_friendly
                            ),
                            labelText: 'MOBILE',
                            hintText: 'MOBILE',
                            
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                          TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.home
                            ),
                            labelText: 'ADDRESS',
                            hintText: 'ADDRESS',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){}, 
                          child: Text('LOGIN')),
                        ),
                       
                        Center(child: Text('OR',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),)),
                        Column(
                          children: [
                            Container(
                              child: FutureBuilder(
                        
                         builder: (context,snapshot){
                      
                            if(snapshot.connectionState==ConnectionState.waiting)return CircularProgressIndicator(); 
                                     return
                             Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                              isLoggedIn?Text("$name signed in."):Text(""),
                                 ElevatedButton(onPressed: isLoggedIn ? signout : _googleSignIn,
                                child: isLoggedIn?Text("Sign Out"): Text("Sign In With Google"))
                                  ],
                                  );
                                  }
                                ),
                               )
                                  ],
                                  ),
                        
                        
                        
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GlogInscreen()));
                        }, child: Text.rich(
                          TextSpan(
                            text: "Don't have an Account?",
                            style: TextStyle(color: Colors.black,),
                            children:[
                              TextSpan(
                                text: 'SignUp',
                                style:TextStyle(color: Colors.blue,),
                              ),
                            ]
                          ),
                          ),
                          ),
                        ],
                            ),
                ),
           ),
           );
           }
     signIn() {
     }
           }
