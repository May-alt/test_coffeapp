import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/providers/auth_provider.dart';

class ResPassword extends StatefulWidget {
  const ResPassword({Key? key}) : super(key: key);

  @override
  State<ResPassword> createState() => _ResPasswordState();
}

class _ResPasswordState extends State<ResPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
                 Navigator.of(context).pop();
                 },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,)
        ),
        title: Text("back",style: GoogleFonts.lato(color: Colors.black),),

        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120.0,horizontal: 20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Rénitialisez votre mot de passe",
               style: GoogleFonts.lato(fontSize: 24,fontWeight: FontWeight.bold),
             ),
             SizedBox(height: 10.0,),
             Text("Saisissez votre adresse e-mail  pour que nous puissions rénitialiser votre mot de passe.",
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 19,),
             ),
             SizedBox(height: 35.0,),

             ReusibalTextFormFilde(
                 hintText: "Enter your e-mail",
                 iconColor: Colors.red,
                 controller: emailController,
                 keyboardType: TextInputType.emailAddress,
                 validator:(index){}
             ),
             SizedBox(height: 20.0,),
             ReusibalButton(
               onPressed: (){},
                 text: "rest password",

             ),
           ],
         )
        )
      ),
    );
  }
}
