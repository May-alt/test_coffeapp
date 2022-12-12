import 'package:flutter/material.dart';


NavigatorToNextPage(context , Widget page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}

NavigatorExitToPage(context){
  Navigator.of(context).pop();
}


NavigatorReplacement(context,Widget page){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>page));
}
