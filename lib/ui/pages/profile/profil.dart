import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(


        backgroundColor: Colors.white,
        elevation: 0.00,

        title: Text("foulen benFoulen",style: TextStyle(color: textColors,),),

        actions: [

          IconButton(
              onPressed: () {},
              icon: Icon(IconlyLight.notification, color: Colors.black,)),
        ],

      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
       child: Align(
        alignment: Alignment.center,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/profil.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0,),
            Text("foulen ",
            style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 08.0,),
            Text("ben Foule",
              style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 08.0,),
            Text("foulen@gmail.com",
              style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),
            ),



          ],
        ),
      ),
      )

    );
  }

}
