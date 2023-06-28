import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SlidList.dart/docDetails.dart';
class docListscreen extends StatefulWidget {
  const docListscreen({super.key});

  @override
  State<docListscreen> createState() => _docListscreenState();
}

class _docListscreenState extends State<docListscreen> {
  @override
  Widget build(BuildContext context) {
                   return Scaffold(
                       appBar: AppBar(
                         title: Text('Docter List'),
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
                                        body: Column( children: [
                                          Container(                
                                           height: 180,
                                           width: double.infinity,
                                            child: ListView(
                                            shrinkWrap: true,
                                              children: [
                                                CarouselSlider(
                                                items: [
                                             
                                               //1st Image of Slider
                                                 Container(
                                                   height: 150,
                                                   width: 500,
                                                   decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(5.0),
                                                   image: DecorationImage(
                                                   image: AssetImage("assets/images/UR.png"),
                                                    fit: BoxFit.fill
                                                         ),
                                                           ),
                                                             ),
                                             
                                                            //2nd Image of Slider
                                                  Container(
                                                   height: 150,
                                                   width: 500,
                                                    decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5.0),
                                                    image: DecorationImage(
                                                    image: AssetImage("assets/images/TR.png"),
                                                    fit: BoxFit.fill
                                                       ),
                                                       ),
                                                        ),
                                                       ], options:  CarouselOptions(
                                                           height: 200.0,
                                                           enlargeCenterPage: true,
                                                           autoPlay: true,
                                                           aspectRatio: 00/ 00,
                                                           autoPlayCurve: Curves.linear,
                                                           enableInfiniteScroll: true,
                                                           autoPlayAnimationDuration: Duration(milliseconds: 800),
                                                           viewportFraction: 1.0,
                                                            ),
                                                            ),
                                                            ] 
                                                            ),
                                                            ),
                                            Card(
                          
                                                elevation: 1,
                                                  child: InkWell(
                                                     onTap: () {
                                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>detailsScreen()));
                                                               },
                                                       child:   Column(
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
                                                          child:   Image.asset('assets/images/DR.jpeg',
                                                        
                                                                               ), 
                                                                               ), 
                                                                               ),
                                                                                  SizedBox(
                                                                                  height: 15,
                                                                                          ),
                                                            Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                  Text('Dr.surendra singh',style: TextStyle(fontSize:20,fontWeight: FontWeight.w700,color: Colors.blue ),),
                                                                  Text('Consultant Dermatology',style: TextStyle(fontSize:10,fontWeight: FontWeight.w700,color: Color.fromARGB(197, 3, 6, 184) ),),
                                                                    SizedBox(height: 5,),
                                                                  Text('MBBS,MD,FCR,( London)',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 0, 0, 9)),),
                                                                    SizedBox(height: 5,),
                                                                  Text('year of exp:12 year',style:TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black45) ,),
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
                    ],                                            
                    ), 
                 );
                }
             }