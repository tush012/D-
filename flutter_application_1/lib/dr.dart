import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SlidList.dart/Home.dart';
import 'package:flutter_application_1/SlidList.dart/RateUs.dart';
import 'package:flutter_application_1/SlidList.dart/SingUP.dart';
import 'package:flutter_application_1/SlidList.dart/Term&Condition.dart';
import 'package:flutter_application_1/docList.dart';

class drScreen extends StatefulWidget {
  const drScreen({super.key});

  @override
  State<drScreen> createState() => _drScreenState();
}

class _drScreenState extends State<drScreen> {
  
   
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) =>IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.account_box))
          ),
         title: Text('Vijay Nagar'),
        centerTitle: true,
    
    
              actions: [
                IconButton(icon:const Icon(Icons.favorite),
                  onPressed: (

                  ){},
                ),
              
              ],
              
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xff002581), Color(0xff00AFF2)],
          ),
      ),
    ),
  ),
    
      
      drawer: Drawer(
      child:
        Container(     
        child: ListView(
          children: <Widget>[
            
            
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                                   begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                        colors: <Color>[Color(0xff002581), Color(0xff00AFF2)]),
                                           ),
              accountName: Text("tushar patidar"),
              accountEmail: Text("tusharpatidar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform
                        ?Color(0xff00AFF2)
                        : Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
          
      
         
              
            
              Container(
                  decoration: const BoxDecoration(
                                 gradient: LinearGradient(
                                   begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                        colors: <Color>[Color.fromARGB(255, 245, 245, 248), Color(0xff00AFF2)]),
                                           ),

                child: ListTile(leading: Icon(Icons.home),
                title: Text('Home',style: TextStyle(fontSize: 15),
                
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                        
                ),
              ),
               ListTile(leading: Icon(Icons.control_point_duplicate_outlined),
              title: Text('Term&Condition',style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TermScreen()));
              },
          
              ),
               ListTile(leading: Icon(Icons.private_connectivity_rounded),
              title: Text('Privacy Policy',style: TextStyle(fontSize: 15),
              ),
              onTap: () {
               
              },
          
              ),
              ListTile(leading: Icon(Icons.rate_review),
              title: Text('Rate Us',style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RateUsScreen()));
              },
              ),
              ListTile(leading: Icon(Icons.login),
              title: Text('SignUp',style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SingUp()));
              },
              
              
               ),
          ],
        ),
      ),
    
      ),
       
        
          body: SingleChildScrollView(
            child: Column(
              
                        children:[
                          SizedBox(height: 10,),
                        
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Container(
                              height: 45,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                 
                                  ),
                                 
                                  prefixIcon: new Icon(Icons.search_rounded,color:Color(0xff002581),),
                                  
                                  hintText: 'search',
                                  hintStyle: TextStyle(
                                    fontSize: 14,color: Color(0xff002581)
                                  ),
                                ),
                              ),
                              ),
                          ),
                          
                          
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
                                           autoPlayCurve: Curves.fastOutSlowIn,
                                           enableInfiniteScroll: true,
                                           autoPlayAnimationDuration: Duration(milliseconds: 800),
                                           viewportFraction: 1.0,
                                         ),
                                ),
                                   ]
                              ),
                           ),
                        
                       
                                Column(
                                  children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                    Container(
                                      height:MediaQuery.of(context).size.height/1.5,
                                  
                                      child: GridView.builder(
                                        shrinkWrap:true ,
                                        physics:NeverScrollableScrollPhysics() ,
                                        itemCount:12,
                                        
                                        gridDelegate: 
                                        SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 4,mainAxisSpacing: 20), 
                                        itemBuilder: ((context, index) {
                                          return 
                                           InkWell(
                                            onTap: (){
                                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>docListscreen()));
                                            },
                                             child: Column(
                                               children: [
                                                 Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child: Container(
                                                   
                                                    height: 80,
                                                    width:  80,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(70),
                                                       gradient: LinearGradient(
                                                       end: Alignment.bottomCenter,
                                                        begin: Alignment.topCenter,
                                                        colors: [Color(0xff002581),Color(0xff00AFF2)] 
                                                            )),
                                                   
                                                    child:Image.asset(items[index]['icon'],scale: 1.8,),
                                                       
                                                  ),
                                                  
                                                               ),
                                                            Text(items[index]['names'],overflow: TextOverflow.ellipsis,)
                                               ],
                                             ),
                                           );
                                      
                                          
                                        })),
                                    ),
                                  ],
                                ),
                              
                            
                            
                            
                           
                            
                            
                
                             
                                      
                          
                         ],
                
            ),
          ),
      
 
   ),   

  );
  }
 List<Map<String,dynamic>> items =[
  {'icon':'assets/images/allergist icon.png','names':'allergisticon'},
  {'icon': 'assets/images/anaesthesiologist icon.png','names':'anaesthesiologist'},
  {'icon':'assets/images/cardiologist.png','names':'cardiologist'},
  {'icon':'assets/images/dentist.png','names':'dentist'},
  {'icon':'assets/images/dermatologist.png','names':'dermatologist'},
  {'icon':'assets/images/endocrinologist.png','names':'endidemiologist'},
  {'icon':'assets/images/ENT specialist.png','names':'ENTspecialist'},
  {'icon':'assets/images/epidemiologist.png','names':'epidemiologist'},
  {'icon':'assets/images/Gastroenterologist.png','names':'gastroenterologist'},
  {'icon':'assets/images/Gastroenterologist.png','names':'generalphysician'},
  {'icon':'assets/images/gynecologist obstetrician.png','names':'gynecologistobstetrician'},
  {'icon':'assets/images/Hyperbaric physician.png','names':'hyperbaricphysician'},
 ];

  
         
}
