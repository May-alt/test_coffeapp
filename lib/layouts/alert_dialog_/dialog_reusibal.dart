import 'package:flutter/material.dart';
import 'package:test_coffeapp/layouts/config_function/function.dart';
import 'package:test_coffeapp/services/auth.dart';


Future<void> showAdressAlertDialog(context) async {
  await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Column(
            children: [
              Text("Changer your adress"),
              TextFormField(
                decoration: InputDecoration(

                ),
              )
            ],
          ),

          actions: [

            TextButton(
              child: Text("Ok"),
              onPressed: (){
              },
            ),
            TextButton(
              child: Text("Cancel"),
              onPressed: () async{
                NavigatorExitToPage(context);
              },
            ),
          ],
        );
      }
  );
}

Future<void> showEmailAlertDialog(context) async {
  await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Column(
            children: [
              Text("Changer your adress email"),
              TextFormField(
                decoration: InputDecoration(

                ),
              )
            ],
          ),
          actions: [
            TextButton(
              child: Text("Exit"),
              onPressed: () async{

              },
            ),
            TextButton(
              child: Text("Cancel"),
              onPressed: (){
                Navigator.of(context).pop();

              },
            ),
          ],
        );
      }
  );
}



Future<void> showLogOutAlertDialog(context) async {
  await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("Deconnexion"),
          content:Text("Voulez-vous vous deconnecter?"),
          actions: [
            TextButton(
              child: Text("Oui"),
              onPressed: () async{
                await AuthMethodes().logout();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Non"),
              onPressed: (){
                // Navigator.of(context).pop();
                NavigatorExitToPage(context);
              },
            ),
          ],
        );
      }
  );
}