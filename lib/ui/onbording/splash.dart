

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/ui/authentification/login/login.dart';
import 'package:test_coffeapp/ui/navigationbar/routes_bommtom_navigation_bar.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Timer(Duration(seconds: 5),()=>
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return HomeScreen();})));
  // }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height*0.55,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img2.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),

          SizedBox(height: size.height*0.03),

          Expanded(
            // flex: 3,
              child:Column(
                children: [

                  Text("Coffee so Good, \n your taste buds \n will love it",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(fontSize: 35,fontWeight: FontWeight.bold)
                  ),

                  SizedBox(height: size.height*0.02,),

                  Text("the best grain, the finest roast, the \n most powerful flavor.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(fontSize: 20,)
                  ),

                  SizedBox(height: size.height*0.02,),

                 Padding(
                     padding: const EdgeInsets.all(20.0),
                   child:  Container(
                     height: 62,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50.0),
                       color: violet,
                     ),
                     child:Center(
                       child:TextButton(
                         onPressed: (){
                                     Navigator.of(context).pushReplacement(
                                         MaterialPageRoute(builder: (context){return LoginPages();})
                                     );
                                   },
                         child: Text("Get Started",
                         style: GoogleFonts.lato(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),
                         ),
                       )
                     )
                   ),
                 ),
                ],
              )
          )
        ],
      )

    );
  }
}

