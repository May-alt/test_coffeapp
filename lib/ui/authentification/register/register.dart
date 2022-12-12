import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/providers/auth_provider.dart';
import 'package:test_coffeapp/services/auth.dart';
import 'package:test_coffeapp/ui/authentification/login/login.dart';
import 'package:test_coffeapp/ui/navigationbar/routes_bommtom_navigation_bar.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({Key? key}) : super(key: key);

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  final formkey = GlobalKey<FormState>();
  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmePwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120.0, horizontal: 20.0),
            child:Column(
              children: [

                Text("S'inscrire ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(fontSize: 30,fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20.0,),

                ReusibalButton(
                  text: 'Continuer avec Google',
                  onTap: ()async{
                    print(await AuthMethodes().user);
                  },
                ),

                SizedBox(height: 20.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'ــــــــــــــــــــــــــــــــــــــــــــ',
                      style: TextStyle(
                        color: greyColors,
                        // color: Colors.black,
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                        // color: Color(0xff8C8FA5),
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'ــــــــــــــــــــــــــــــــــــــــــــ',
                      style: TextStyle(
                        color: greyColors,
                        // color: Colors.black
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0,),



                Form(
                  key: formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        ReusibalTextFormFilde(
                            prefixIcon: Icon(
                              IconlyLight.user2,
                              color: iconsColor,
                            ),
                            hintText: "Name",
                            labelText: "Name",
                            iconColor: Colors.red,
                            controller: nameControler,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return " Veuillez saisir votre name";
                              }
                            }
                          ),

                        SizedBox(
                          height: 20.0,
                        ),


                        ReusibalTextFormFilde(
                            prefixIcon: Icon(
                              IconlyLight.message,
                              color: iconsColor,
                            ),
                            hintText: "foulenBenFoulen@gmail.com",
                            labelText: "E-mail",
                            iconColor: Colors.red,
                            controller: emailControler,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@')) {
                                return " Veuillez saisir une adresse e-mail.";
                              }
                            }
                            ),


                        SizedBox(
                          height: 20.0,
                        ),


                        ReusibalTextFormFilde(
                            prefixIcon: Icon(
                              IconlyLight.password,
                              color: iconsColor,
                            ),
                            suffix: Icons.remove_red_eye_outlined,
                            hintText: "********",
                            labelText: "password",
                            iconColor: Colors.red,
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Veuillez saisir un mot de passe.";
                              }
                            }),

                        SizedBox(
                          height: 20.0,
                        ),


                        ReusibalButton(
                            text: "Register",
                            onPressed: () async {

                              if (formkey.currentState!.validate()) {
                                dynamic res = await AuthMethodes().signup(
                                    nameControler.text,
                                    emailControler.text,
                                    passwordController.text
                                );

                                if (res != null) {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) {
                                        return RouteBottomNavigationBar();
                                      }));
                                }
                                else {
                                  AlertDialog(
                                    title: Text(
                                        "The account already exists for that email "),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("No"),
                                      ),
                                    ],
                                  );
                                }
                              }

                            }
                            ),


                        SizedBox(
                          height: 20.0,
                        ),


                        Text(
                          'ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ',
                          style: TextStyle(
                            color: Color(0xff8C8FA5),
                            // color: Colors.black
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Vous déjà un compte?",
                              style:
                              GoogleFonts.lato(color: textColors, fontSize: 16),
                            ),
                            SizedBox(child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return LoginPages();
                                    }));
                              },
                              child: Text(
                                "Se connecter",
                                style: GoogleFonts.lato(
                                    color: textColors,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
