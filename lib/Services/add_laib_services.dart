import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:health_app_2/Model_classes/laib_model.dart';

class AddLaibServices {
  static AddLaibServices ? _addLaibServices;
  AddLaibServices._internal();
  factory AddLaibServices(){
    return _addLaibServices??= AddLaibServices._internal();
  }
CollectionReference collectionReference=FirebaseFirestore.instance.collection("AddLaibs");

  Future<void> insertData({required LaibModel laibModel})async{
    collectionReference.doc(laibModel.name).set(laibModel.toMap());
  }


  Future<List<LaibModel>> getData()async{
    QuerySnapshot querySnapshot= await collectionReference. get();
  List<QueryDocumentSnapshot> queryDocumentSnapshot=querySnapshot.docs;

  List<LaibModel> list=queryDocumentSnapshot.map((e) => LaibModel.fromMap(e.data()as Map<String,dynamic>)).toList();
  return  list;
  }


  
  
}