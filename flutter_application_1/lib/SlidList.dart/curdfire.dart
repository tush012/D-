import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentData extends StatefulWidget {
  const StudentData({super.key});

  @override
  State<StudentData> createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {
  //text field controller
  final TextEditingController _nameController =TextEditingController();
  final TextEditingController _numberController =TextEditingController();
  final TextEditingController _snController =TextEditingController();
  final CollectionReference _items =FirebaseFirestore.instance.collection('itmes');
  //for create operation
  Future<void> _create([DocumentSnapshot?documentSnapshot])async{
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context,builder: (BuildContext ctx){
      return Padding(padding:EdgeInsets.only(
        top: 20,right: 20,left: 20,bottom: MediaQuery.of(ctx ).viewInsets.bottom+20),
          child: Column(
           mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text('created your items',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),),
            ),


            TextField(
            controller: _nameController,
              decoration:  const InputDecoration(
              labelText: 'Name',
              hintText: 'eg.elon',
            ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _snController,decoration: const InputDecoration(
              labelText: 'S.N',
              hintText: 'eg.1',
            ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _numberController,decoration: const InputDecoration(
              labelText: 'Number',
              hintText: 'eg.10',
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed:()async{
              final String name =_nameController.text;
              final int ?sn =int.tryParse(_snController.text);
              final int ?number =int.tryParse(_numberController.text);
              if(number !=null){
                await _items.add({"name":name,"number":number,"sn":sn});
                _nameController.text='';
                _snController.text='';
                _numberController.text='';
                Navigator.of(context).pop();
              }
            }, child: const Text('Created'))
          ],



      ))  ;
    }
    );
  }
  ////for update operation
  Future<void> _update([DocumentSnapshot?documentSnapshot])async{
    if(documentSnapshot !=null){
      _nameController.text =documentSnapshot['name'];
      _snController.text =documentSnapshot['sn'].toString();
      _numberController.text =documentSnapshot['number'].toString();
    }
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,builder: (BuildContext ctx){
      return Padding(padding:EdgeInsets.only(
          top: 20,right: 20,left: 20,bottom: MediaQuery.of(ctx ).viewInsets.bottom+20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text('update your items',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,
                ),),
              ),


              TextField(
                controller: _nameController,
                decoration:  const InputDecoration(
                  labelText: 'Name',
                  hintText: 'eg.elon',
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _snController,decoration: const InputDecoration(
                labelText: 'Roll.NO',
                hintText: 'eg.1',
              ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _numberController,decoration: const InputDecoration(
                labelText: 'Number',
                hintText: 'eg.10',
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed:()async{
                final String name =_nameController.text;
                final int ?sn =int.tryParse(_snController.text);
                final int ?number =int.tryParse(_numberController.text);
                if(number !=null){
                  await _items.doc(documentSnapshot!.id).set({"name":name,"number":number,"sn":sn});
                  _nameController.text='';
                  _snController.text='';
                  _numberController.text='';
                  Navigator.of(context).pop();
                }
              }, child: const Text('Updated'))
            ],



          ))  ;
    }
    );
  }
//delete operation
  Future<void> _delete(String productID) async{
    await _items.doc(productID).delete();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.blue,
     title: const Text('Crud',style: TextStyle(color: Colors.white,
     fontSize: 30),),
   ),
      body:
    StreamBuilder(
        stream: _items.snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> streamSnapshot){
          if(streamSnapshot.hasData){
            return ListView.builder(itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context,index){
              final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
              return Card(
                color: const Color.fromARGB(255, 88, 136, 190),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(documentSnapshot['sn'].toString(),style:const TextStyle(fontSize: 20,) ,),
                    radius: 17 ,backgroundColor: Colors.cyan,),

                  title: Text(documentSnapshot['name']),

                  subtitle: Text(documentSnapshot['number'].toString()),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(onPressed: ()=>_update(documentSnapshot), icon: const Icon(Icons.edit)),
                        IconButton(onPressed: ()=>_delete(documentSnapshot.id), icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                ),
              );
                });
          }
        return const Center(
          child: CircularProgressIndicator(),
        );


      }),
      floatingActionButton: FloatingActionButton(onPressed: ()=> _create(),
      backgroundColor: Color.fromARGB(255, 23, 200, 114),
      child: const Icon(Icons.arrow_forward),
      ),






    );
  }
}
