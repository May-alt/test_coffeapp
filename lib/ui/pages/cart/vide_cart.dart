import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_coffeapp/layouts/constant.dart';

class VideCart extends StatelessWidget {
  const VideCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset("assets/vide_images/error.jpg", width: 250,height: 250,),
          ),
          Expanded(
            flex: 2,
            child:Text("No Product yet \n don't have anny product",
                textAlign: TextAlign.center,
                style:Grastitle
            ),
          )
        ],
      ),
    );
  }
}
