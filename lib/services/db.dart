// au se trouve les formation pour stocker les donners dans base de donnes


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_coffeapp/models/users.dart';

class DBServices{

 final CollectionReference <Map<String , dynamic>> userCollection = FirebaseFirestore.instance.collection("Users");


 Future addUser() async{}

 Future getUser() async{}

 Future deletUser() async{}



}