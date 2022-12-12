

import 'package:flutter/material.dart';
import 'package:test_coffeapp/services/auth.dart';


class AuthProvider extends ChangeNotifier{

 TextEditingController emailControler = TextEditingController();
 TextEditingController passwordController = TextEditingController();
 TextEditingController confirmePwdController = TextEditingController();



 reseteController(){
   emailControler.clear();
   passwordController.clear();
   notifyListeners();
   notifyListeners();
 }










}