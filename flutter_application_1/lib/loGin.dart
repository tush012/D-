import 'package:flutter/material.dart';
import 'package:flutter_application_1/dr.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  List  items = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
  ];

  List  items1 = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
  ];
  List  items2 = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
  ];





  String? selectedcityList;
  var categoryValue;
  var categoryValue1;
   var categoryValue2;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
            children: [      
              Container(
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
                               SizedBox(
                              height: 10,
                              ),
                              Padding( 
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  width:40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 2, 34, 117)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 0.5,
                                      ),
                                      const Text(
                                        'DR.',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '+',
                                        style: TextStyle(
                                            height: 0.5,
                                           
                                            fontSize: 15,
                                            color: Color.fromARGB(255, 122, 235, 10),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'DR Plus',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),       
                            ] ,
                            ),
                      ),
                       Container(
                        height: 180,
                       width: 410,
                         child: Image.asset('assets/images/UR.png'),
        ),
                            SizedBox(
                               height: 15,
                              ),
                              SingleChildScrollView(
                                 child: Column(
                                  children: [
                                    Container(
                                      height: 300,
                                      width:350,
                                      padding: EdgeInsets.only(bottom:00,left:10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.black12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black45,
                                            offset: const Offset(
                                                        5.0,
                                                        5.0,
                                                ),
                                               blurRadius: 10.0,
                                               spreadRadius: 2.0,
                                          ),
                                        ],
                                        color: Colors.white,   
                                                          ),
                                        child: Column(children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                      children: [
                                       Container(
                                            height: 50,
                                           width: 50,
                                            child: Image.asset('assets/images/state.png'),
                                           decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                         color: Colors.blue
                                         ),
                                       ),
                                     Padding(
                               padding: const EdgeInsets.all(00),
                               child: Container(
                               height: 50,
                               width: 280,
                               padding: EdgeInsets.only(left:5,top:00),
                               decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(5),
                               border: Border.all(
                               color: Colors.black12)),
                               child: DropdownButton(
                               
                               value: categoryValue,
                               underline: Container(),
                               isExpanded: true,
                               
                               icon: Icon(
                               Icons.keyboard_arrow_down,
                               color: Colors.black45,
                               ),
                               hint: Text(
                               " States ",
                               style: TextStyle(
                               color: Colors.black54),
                               ),
                               // Array list of items
                               items: items.map((val) {
                               return DropdownMenuItem(
                               value: val,
                               child: Container(
                               child: Text(val.toString())),
                               );
                               }).toList(),
                               
                               onChanged: (newValue) {
                               setState(() {
                               categoryValue = newValue;
                               print("selected category $categoryValue");
                               });
                               },
                               ),
                               
                               ),
                               
                               
                               ), 
        
                                      
                                ]
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                     Row(
        
                                      children: [
                                        
                                       Container(
                                            height: 50,
                                           width: 50,
                                            child: Image.asset('assets/images/city.png'),
                                           decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                         color: Colors.blue
                                         ),
                                       ),
                                     Padding(
                               padding: const EdgeInsets.all(00),
                               child: Container(
                               height: 50,
                               width: 280,
                               padding: EdgeInsets.only(left:5,top:00),
                               decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(5),
                               border: Border.all(
                               color: Colors.black12)),
                               child: DropdownButton(
                               // Initial Value
                               value: categoryValue1,
                               underline: Container(),
                               isExpanded: true,
                               // Down Arrow Icon
                               icon: Icon(
                               Icons.keyboard_arrow_down,
                               color: Colors.black45,
                               ),
                               hint: Text(
                               "city ",
                               style: TextStyle(
                               color: Colors.black54),
                               ),
                               // Array list of items
                               items: items1.map((val) {
                               return DropdownMenuItem(
                               value: val,
                               child: Container(
                               child: Text(val.toString())),
                               );
                               }).toList(),
                               // After selecting the desired option,it will
                               // change button value to selected value
                               onChanged: (newValue) {
                               setState(() {
                               categoryValue1 = newValue;
                               print("selected category $categoryValue1");
                               });
                               },
                               ),
                               
                               ),
                               
                               
                               ), 
        
                                      
                                ]
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        
                                       Container(
                                            height: 50,
                                           width: 50,
                                            child: Image.asset('assets/images/place.png'),
                                           decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                         color: Colors.blue
                                         ),
                                       ),
                                     Padding(
                               padding: const EdgeInsets.all(00),
                               child: Container(
                               height: 50,
                               width: 280,
                               padding: EdgeInsets.only(left:5,top:00),
                               decoration: BoxDecoration(
                               color: Color.fromARGB(255, 255, 255, 255),
                               borderRadius: BorderRadius.circular(5),
                               border: Border.all(
                               color: Colors.black12)),
                               child: DropdownButton(
                               // Initial Value
                               value: categoryValue2,
                               underline: Container(),
                               isExpanded: true,
                               // Down Arrow Icon
                               icon: Icon(
                               Icons.keyboard_arrow_down,
                               color: Colors.black45,
                               ),
                               hint: Text(
                               " place ",
                               style: TextStyle(
                               color: Colors.black54),
                               ),
                               // Array list of items
                               items: items.map((val) {
                               return DropdownMenuItem(
                               value: val,
                               child: Container(
                               child: Text(val.toString())),
                               );
                               }).toList(),
                               // After selecting the desired option,it will
                               // change button value to selected value
                               onChanged: (newValue) {
                               setState(() {
                               categoryValue2 = newValue;
                               print("selected category $categoryValue2");
                               });
                               },
                               ),
                               
                               ),
                               
                               
                               ), 
        
                                      
                                ]
                                    ),
                                    SizedBox(
                                      height: 10,
        
                                    ),
                                   
                                      ElevatedButton(
                                      child: Text('   Submit   '),
                                       onPressed: () {
                                        Navigator.push(
                                         context,
                                        MaterialPageRoute(builder: (context) =>drScreen()),
                                         );
        
                                       },
                                       style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 40), backgroundColor: Color.fromARGB(255, 53, 3, 154) ),
             
                                       
                                       
                                            ),
                                  
                                     
                                        ]),
        
                                    
                                    
        
                                    
                                    
        
                                    ),
                                  
                                    
                                  ],
                                 ),
                               ),
                        
                                
        
        ],
        ),
        ),
),
);


  }
}
 