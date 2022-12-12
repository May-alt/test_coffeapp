import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/config_function/function.dart';


class SearchPages extends StatefulWidget {
  const SearchPages({Key? key}) : super(key: key);

  @override
  State<SearchPages> createState() => _SearchPagesState();
}

class _SearchPagesState extends State<SearchPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(
            onPressed: (){
              NavigatorExitToPage(context);
            },
            icon: Icon(IconlyLight.arrowLeft2,color: Colors.black,),
        ),

        title: Text("Seach Page"),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),

      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
        child: Column(
          children: [
            Container(
              height: 100,
              // color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(08.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText: "Search Coffee....",
                          hintStyle: GoogleFonts.lato(fontSize: 18),
                          contentPadding: const EdgeInsets.all( 20.0),
                          //outline Border
                          border: InputBorder.none,
                          //Focuse Border
                          focusedBorder: InputBorder.none,
                          //Enabled Border
                          enabledBorder:  InputBorder.none,
                          disabledBorder:   InputBorder.none,
                        ) ,
                      ),
                    ),
                  ),

                  SizedBox(width: 10.0,),

                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color:violetColors,
                      borderRadius: BorderRadius.circular(08.0),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search,color: Colors.white,size: 30,),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.0,),



          ],
        )
      )
      ),
    );
  }
}
