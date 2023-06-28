// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/SlidList.dart/contact.dart';
// class Newf extends StatefulWidget {
//   const Newf({super.key});

//   @override
//   State<Newf> createState() => _NewfState();
// }

// class _NewfState extends State<Newf> {

//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController contactscontroller = TextEditingController();
 
//   List<contact> contacts = List.empty();
  
//   int selectdindex = -1 ;
  
   

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('NEW'),
//         centerTitle: true,
//       ),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//               controller: namecontroller,
//               decoration: InputDecoration(
//                 hintText: 'Name',
//                 border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),),),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//              TextField(
//               keyboardType: TextInputType.number,
//               maxLength: 10,
//               controller: contactscontroller,
//               decoration: InputDecoration(
//                 hintText: 'contact No.',
//                 border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),),),
//             ),
//             Row(
//               children: [
//                 ElevatedButton(onPressed: (){
//                   //  
//                   String name = namecontroller.text.trim();
//                    String contacts =contactscontroller.text.trim();
//                    if(name.isNotEmpty && contacts.isNotEmpty){
//                    setState(() {
//                     namecontroller.text = '';
//                     contactscontroller.text ='';
//                    contacts.add(contact(name: name, contacts: contacts));
//                    });
             
                
//                   }
//                   // 
//                 },
//                  child:Text('save'),),
//                 SizedBox( width: 20,),
//                  ElevatedButton(onPressed: (){
//                   // 
//                    String name = namecontroller.text.trim();
//                    String contacts =contactscontroller.text.trim();
//                     if(name.isNotEmpty && contacts.isNotEmpty){
//                    setState(() {
//                     namecontroller.text = '';
//                     contactscontroller.text ='';
//                     contacts[selectdindex].name= name;
//                     contacts[selectdindex].contacts = contacts;
//                      selectdindex = -1;
//                    });
//                     }
//                   // 

//                                         },
//                   child:Text('GetData'),),
//               ],
//             ),
//             contacts.isEmpty ? const Text('no contact',style: TextStyle(fontSize: 10),)
//            : Expanded(
//               child: ListView.builder(
//                 itemCount: contacts.length,
//                 itemBuilder: (context, index) => getrow(index),
              
              
//               ),
//             ),
//           ],
//         ),
//     );
//   }
  
//  Widget getrow(int index) {
//   return Card(
//     child: ListTile(
//       leading: CircleAvatar(
//         child: Text(contacts[index].name[0]),
//         backgroundColor: index % 2 == 0 ? Colors.blue : Colors.deepPurple,
//         foregroundColor: Colors.white,
//       ),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(contacts[index].name),
//           Text(contacts[index].contacts),
//         ],
//       ),
//       trailing: SizedBox(
//         width: 50,
//         child: Row(children: [
//            InkWell(
//             onTap: () {
//               //
//              namecontroller.text = contacts[index].name;
//              contactscontroller.text = contacts[index].contacts;
//              selectdindex = index;
              
//               //
//             },
//             child: Icon(Icons.edit)),
//             InkWell( 
//               onTap: () {
//                 //
//                 setState(() {
//                   contacts.removeAt(index);
//                 });
//                 //
//               },
//               child: Icon(Icons.delete)),
//         ],
          
//         ),
//       ),
  
//     ),
//   );
//  }
// }


