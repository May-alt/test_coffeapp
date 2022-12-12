import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/providers/auth_provider.dart';
import 'package:test_coffeapp/services/auth.dart';
import 'package:test_coffeapp/ui/authentification/register/register.dart';
import 'package:test_coffeapp/ui/authentification/res_password/respassword.dart';
import 'package:test_coffeapp/ui/navigationbar/routes_bommtom_navigation_bar.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120.0,horizontal: 20.0),
          child: Column(
            children: [

              Text("Bienvenue à nouveau",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(fontSize: 30,fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20.0,),

              ReusibalButton(
                  text: 'Se connecter avec Google',
                 onTap: (){},
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
                    children: [

                      ReusibalTextFormFilde(
                          prefixIcon: Icon(
                            IconlyLight.message,
                            color: iconsColor,
                          ),
                          hintText: "E-mail",
                          iconColor: Colors.red,
                          controller: emailControler,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Veuillez saisir une adresse e-mail.";
                            }
                            return null;
                          }),

                      SizedBox(
                        height: 15.0,
                      ),

                      ReusibalTextFormFilde(
                          prefixIcon: Icon(
                            IconlyLight.password,
                            color: iconsColor,
                          ),
                          suffix: Icons.remove_red_eye_outlined,
                          hintText: "Mot de passe",
                          iconColor: Colors.red,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Veuillez saisir un mot de passe.";
                            }
                            return null;
                          }),

                      SizedBox(
                        height: 20.0,
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ResPassword();
                            }));
                          },
                          child: Text(
                            "Mot de passe oublié?",
                            style:
                            GoogleFonts.lato(color: textColors, fontSize: 18),
                          ),
                        ),
                      ),


                      ReusibalButton(
                        onTap:() async{
                          if (formkey.currentState!.validate()) {
                            print(emailControler.text);
                            print(passwordController.text);
                            dynamic res = await AuthMethodes().signin(
                                emailControler.text, passwordController.text);
                            if (res != null) {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return RouteBottomNavigationBar();
                              }));
                            } else {
                              print("error");
                            }
                          }
                        },
                          text: "Se connecter",

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
                            "Vous n'avez pas de compte?",
                            style:
                            GoogleFonts.lato(color: textColors, fontSize: 16),
                          ),
                         Expanded(child:  TextButton(
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) {
                                   return RegisterPages();
                                 }),
                               );
                             },
                             child: Text(
                               "Inscrivez-vous ",
                               style: GoogleFonts.lato(
                                   color: textColors,
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold),
                             ),
                         ),
                         ),
                        ],
                      )

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



  openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Your Title"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ok"),
            ),
          ],
        ),
      );
}
