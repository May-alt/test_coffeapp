import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';


Widget ReusibalText({
  required String text,
}) =>
    Text(text,
      style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
    );

/************************* Reusibal AppBarWidget *************************/

ReusAppBar({
  void Function()? onPressed,
  required String data,
}) =>
    AppBar(
      backgroundColor: Colors.white,

      elevation: 0.0, leading: IconButton(
        onPressed: (){},
        icon: Icon(Icons.sort, color: Colors.black,)),

      title: Text(data,
        style: GoogleFonts.lato(color: Colors.black,),),

      actions: [

        IconButton(
            onPressed: onPressed,
            icon: Icon(IconlyLight.search, color: Colors.black,)),

        IconButton(
            onPressed: () {},
            icon: Icon(IconlyLight.notification, color: Colors.black,)),
      ],

    );


/************************* Reusibal Form Widgets *************************/

Widget ReusibalTextFormFilde({

  Widget? prefixIcon,
  IconData? suffix,
  String? labelText,
  required String? hintText,
  required Color? iconColor,
  required TextEditingController? controller,
  required TextInputType? keyboardType,
  required String? Function(String?)? validator,
  void Function(String?)? onSaved,
  bool obscureText = false,
  void Function()? presedIcon,
   void Function(String)? onChanged,
}) =>
    TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: IconButton(
          onPressed: presedIcon,
          icon: Icon(
            suffix,
            color: iconsColor,
          ),
        ),
        hintText: hintText,
        labelText:labelText ,
        hintStyle: GoogleFonts.lato(fontSize: 18, color: textColors),
        iconColor: iconColor,
        //outline Border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(05.0),
          borderSide: BorderSide(width: 1,color: greyColors),
        ),
        //Focuse Border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(05.0),
          borderSide: BorderSide(width: 1, color: greyColors),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(05.0),
          borderSide: BorderSide(width: 1, color: greyColors),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(05.0),
          borderSide: BorderSide(width: 1, color: greyColors),
        ),
      ),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,

    );


/************************* Reusibal Form Widgets *************************/

Widget ReusibalButton({
  double? height = 60,
  double? width =double.infinity,
  required  String text,
  void Function()? onPressed,
  void Function()? onTap,
})
=> InkWell(
  onTap: onTap,
  child: Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      // color: brown,
        color:violet,
        borderRadius: BorderRadius.circular(10)
    ),

    child: Center(
      child: TextButton(
          onPressed: onPressed,
          child: Text(text,
            style: GoogleFonts.lato(
               letterSpacing: 1.2,
                color: Colors.white,// color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          )
      )
      ,
    ),
  ),
);



/************************* Reusibal Widgets Profil *************************/


Widget ReusibalButtomEditProfilo({
  double? height = 60,
  required String data,
  required IconData? icon,
})

=> Container(
  height: height,
  child: Card(
    child: Row(
      children: [
        Icon(icon),
        SizedBox(width: 10,),
        Expanded(
          child: Text(data,
            style: GoogleFonts.lato(color: textColors,fontWeight: FontWeight.bold,fontSize: 18),
          ),
        ),
        SizedBox(width: 10,),
        Icon(Icons.edit,size: 30),
      ],
    ),
  ),
);



/************************* Reusibal ListTile Function  *************************/

ReusibalLsitTile({
  required Text Title,

  required Widget? leading,
  required Widget? trailing,
  required void Function()? onTap,
})
=> Container(
  padding: const EdgeInsets.all(02.0),
  margin: const EdgeInsets.all(05.0),

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(05.0),
    color: Colors.grey.shade100,
  ),

  child: ListTile(
    title: Title,
    leading:leading ,
    trailing: trailing,
    onTap: onTap,
  ),
);



