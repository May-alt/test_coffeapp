import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';


class FovoriteWidgets extends StatefulWidget {
  const FovoriteWidgets({Key? key}) : super(key: key);

  @override
  State<FovoriteWidgets> createState() => _FovoriteWidgetsState();
}

class _FovoriteWidgetsState extends State<FovoriteWidgets> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(right: 30.0,bottom: 10.0),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade100,
            elevation: 03.0,
            child: InkWell(
              onTap: (){
                print("tap");
              },

              child: Container(
                margin: const EdgeInsets.all( 10.0),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width:80.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img/cf2.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("coffe a lait",
                          style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Text("85.0\$",
                          style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
          ),
        ),
        positionedRemove(),
      ],
    );
  }

  Widget positionedRemove(){
    return Positioned(
        top: 20,
        right:15,
        child: Container(
          height:30 ,
          width: 30,
          child: MaterialButton(
            onPressed: (){
              print("delete");
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(05.0),),
            padding: const EdgeInsets.all(02.0),
            color: Colors.red,
            child: Icon(IconlyLight.heart,color: Colors.white),
          ),
        )
    );
  }


}
