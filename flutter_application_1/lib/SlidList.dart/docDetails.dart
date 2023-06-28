import 'package:flutter/material.dart';
class detailsScreen extends StatefulWidget {
  const detailsScreen({super.key});

  @override
  State<detailsScreen> createState() => _detailsScreenState();
}
int  currentIndexs = 1;
int  Indexs =1;



class _detailsScreenState extends State<detailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('docter details'),
              centerTitle: true,
                           flexibleSpace: Container(
                            decoration: const BoxDecoration(
                                 gradient: LinearGradient(
                                   begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                        colors: <Color>[Color(0xff002581), Color(0xff00AFF2)]),
                                           ),
                                             ),
                                               ),
                                               body: SingleChildScrollView(
                                                 child: Column(
                                                  children: [
                                                      Card(
                                                                         
                                                  elevation: 0.8,
                                                    
                                                         child:   SingleChildScrollView(
                                                           child: Column(
                                                           crossAxisAlignment:CrossAxisAlignment.start,
                                                           mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                                  SizedBox(
                                                                   height: 10,
                                                                          ),
                                                                                                               Container(
                                                               height: 100,
                                                               width:400,
                                                               child: Row( 
                                                               children: [
                                                              ClipRRect(
                                                              borderRadius: BorderRadius.circular(20),
                                                              child: Padding(
                                                              padding: const EdgeInsets.all(7.0),
                                                              child:   Image.asset('assets/images/DR.jpeg',height:162,
                                                                                   ), 
                                                                                   ), 
                                                                                   ),
                                                                                      SizedBox(
                                                                                      height: 15,
                                                                                              ),
                                                                Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                      Text('Dr.surendra singh',style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,color: Colors.blue ),),
                                                                      SizedBox(width: 5,),
                                                                    Text('Consultant Dermatology',style: TextStyle(fontSize:12,fontWeight: FontWeight.w700,color: Color.fromARGB(197, 3, 6, 184) ),),
                                                                        SizedBox(height: 5,),
                                                                      Text('MBBS,MD,FCR,( London)',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 0, 0, 9)),),
                                                                        SizedBox(height: 5,),
                                                                      Text('year of exp:12 year',style:TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 0, 0, 9) ,),),
                                                                        SizedBox(
                                                                          height: 5,
                                                                            ),
                                                                             Row( 
                                                                            crossAxisAlignment: CrossAxisAlignment.start, 
                                                                             children: [
                                                                                 Container(
                                                                                  height: 15,
                                                                                    width: 15,
                                                                       child: Image.asset('assets/images/place.png'),
                                                                          decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(00),
                                                                        ),
                                                                        ),
                                                                          SizedBox(
                                                                             width: 5,
                                                                             ),
                                                                           Text('vijay nager',style: TextStyle(fontSize: 12,),),
                                                                               SizedBox(
                                                                                  width: 5,
                                                                                       ), 
                                                                                Container(
                                                                                height: 15,
                                                                                width: 15,
                                                                               child: Image.asset('assets/images/city.png'),
                                                                              decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(00),
                                                                                ),
                                                                                    ),
                                                                                          SizedBox(
                                                                                           width: 5,
                                                                                      ),
                                                                            Text('indore ',style: TextStyle(fontSize: 12,),),
                                                                                SizedBox(
                                                                                   width: 5,
                                                                                        ),
                                                                        Container(
                                                                           height: 15,
                                                                            width: 15,
                                                                           child: Image.asset('assets/images/state.png'),
                                                                               decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(00),
                                                                           ), 
                                                                            ),
                                                                           SizedBox(
                                                                             width: 5,
                                                                           ),
                                                                         Text('M.P',style: TextStyle(fontSize: 12,),),
                                                                                                     ],
                                                                                                   ), 
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                           ),
                                                                                         ),
                                                                                       ],
                                                                                    ),
                                                         ),
                                                                        ),
                                                                        SizedBox(
                                                                         height: 10,
                                                                       
                                                                        ),
                                                                        Row(
                                                                         children: [
                                                                           Padding(
                                                                             padding: const EdgeInsets.only(left:16),
                                                                             child: Text('Life & Care Clinic',style:TextStyle(fontSize: 15,fontWeight:FontWeight.w600,color: Color.fromARGB(255, 2, 43, 115) ),),
                                                                           ), 
                                                                         ],
                                                                        ),
                                                                        SizedBox(
                                                                         height: 8,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 16),
                                                                              child: Container(
                                                                                   height: 30,
                                                                                   width: 380,
                                                                                
                                                                                   decoration: BoxDecoration(
                                                                                     color: Color.fromARGB(216, 6, 8, 126),
                                                                                           borderRadius: BorderRadius.circular(5),
                                                                                   ),
                                                                                   
                                                                                   child: Row(
                                                                                     children: [
                                                                                       SizedBox(
                                                                                         height: 10,
                                                                                       ),
                                                                              
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 0;
                                                                                     });},
                                                                                     
                                                                                      child: 
                                                                                      
                                                                                      Container( 
                                                                                       
                                                                                        width: 35,
                                                                                        height: 22,
                                                                                        decoration: BoxDecoration(
                                                                                       color: currentIndexs == 0
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'sun',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 1;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: currentIndexs == 1
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'mon',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 2;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: currentIndexs == 2
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Tus',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 3;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: currentIndexs == 3
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Wen',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 4;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: currentIndexs == 4
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Thu',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 5;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: currentIndexs == 5
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'fri',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                     SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                                                              
                                                                                     onTap: (){setState(() {
                                                                                       currentIndexs = 6;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: currentIndexs == 6
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Sat',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ), 
                                                                                     ]
                                                                                     ),  
                                                                                 ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(height: 20,),
                                                                        Container(
                                                                                     height: 30,
                                                                                     width: 380,
                                                                                     color: Color.fromARGB(255, 176, 227, 232),
                                                                                     child: Row(
                                                                                       children: [
                                                                                         Icon(Icons.access_time),
                                                                                         Text('Morning : 10 to 1 pm'),
                                                                                         SizedBox(
                                                                                           width: 75,
                                                                                         ),
                                                                                         Icon(Icons.access_time),
                                                                                         Text('Evening : 6 to 9 pm'),
                                                                                       ],
                                                                                     ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                     height: 10,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.all(8.0),
                                                                                      child: Container( 
                                                                                       child: Row(
                                                                                         children: [
                                                 Image.asset('assets/images/place.png'),
                                                 
                                                                                           Column(
                                                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                                                             children: [
                                                     Text('701/B,yashwant pride,Opp,McDonald cake,Near Dmart'),
                                                    Text('shopping center,Vasai (W),Pin:40201,Mumbai,Maharashtra'),
                                                    Text('For Appointment:9234567890',style: TextStyle(fontSize:15,
                                                    fontWeight: FontWeight.w500),)
                                                                                    
                                                  ],
                                                  ),
                                                                                         ],
                                                                                       ),
                                                                                         
                                                                                       ),
                                                                                    ),
                                                                                     Row(
                                                                         children: [
                                                                           Padding(
                                                                             padding: const EdgeInsets.only(left:16),
                                                                             child: Text('Hospital 1',style:TextStyle(fontSize: 15,fontWeight:FontWeight.w600,color: Color.fromARGB(255, 2, 43, 115) ),),
                                                                           ), 
                                                                         ],
                                                                        ),
                                                                         SizedBox(
                                                                         height: 8,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 16),
                                                                              child: Container(
                                                                                   height: 30,
                                                                                   width: 380,
                                                                                
                                                                                   decoration: BoxDecoration(
                                                                                     color: Color.fromARGB(216, 6, 8, 126),
                                                                                           borderRadius: BorderRadius.circular(5),
                                                                                   ),
                                                                                   
                                                                                   child: Row(
                                                                                     children: [
                                                                                       SizedBox(
                                                                                         height: 10,
                                                                                       ),
                                               
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 0;
                                                                                     });},
                                                                                     
                                                                                      child: 
                                                                                      
                                                                                      Container( 
                                                                                       
                                                                                        width: 35,
                                                                                        height: 22,
                                                                                        decoration: BoxDecoration(
                                                                                       color: Indexs == 0
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'sun',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 1;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: Indexs == 1
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'mon',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 2;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: Indexs == 2
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Tus',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 3;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: Indexs == 3
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Wen',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 4;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: Indexs == 4
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Thu',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                      SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 5;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: Indexs == 5
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'fri',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ),
                                                                                     SizedBox(
                                                                                     width: 20,
                                                                                    ),
                                                                                    InkWell(
                                               
                                                                                     onTap: (){setState(() {
                                                                                       Indexs = 6;
                                                                                     });},
                                                                                      child: Container(  width: 35,
                                                                       height: 22,
                                                                       decoration: BoxDecoration(
                                                                           color: Indexs == 6
                                                                                         ? Color(0xff00AFF2)
                                                                                         : Colors.transparent,
                                                                           borderRadius:
                                                                                         BorderRadius.circular(2)),
                                                                       child: Center(
                                                                         child: Text(
                                                                           'Sat',
                                                                           style: TextStyle(
                                                                                         color: Colors.white,
                                                                                         fontSize: 10),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                                    ), 
                                                                                     ]
                                                                                     ),  
                                                                                 ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                         SizedBox(height: 20,),
                                                                        Container(
                                                                                     height: 30,
                                                                                     width: 380,
                                                                                     color: Color.fromARGB(255, 176, 227, 232),
                                                                                     child: Row(
                                                                                       children: [
                                                                                         Icon(Icons.access_time),
                                                                                         Text('Morning : 11 to 1 pm'),
                                                                                         SizedBox(
                                                                                           width: 75,
                                                                                         ),
                                                                                         Icon(Icons.access_time),
                                                                                         Text('Evening : 5 to 7 pm'),
                                                                                       ],
                                                                                     ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                     height: 10,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.all(8.0),
                                                                                      child: Container( 
                                                                                       child: Row(
                                                                                         children: [
                                                 Image.asset('assets/images/place.png'),
                                                 
                                                                                           Column(
                                                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                                                             children: [
                                                     Text('501/b Namwant place Opp. Big bazar cake,Opp Dmart'),
                                                    Text('shopping center,Vasai (W),Pin:40201,Thane,Maharashtra'),
                                                    Text('For Appointment:9834567895',style: TextStyle(fontSize:15,
                                                    fontWeight: FontWeight.w500),)
                                                                                    
                                                  ],
                                                  ),
                                                                                         ],
                                                                                       ),
                                                                                         
                                                                                       ),
                                                                                    ),                  
                                                     ],
                                                    ),
                                               ),
    );

  }
}
