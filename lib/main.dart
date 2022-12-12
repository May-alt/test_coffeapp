import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_coffeapp/providers/auth_provider.dart';
import 'package:test_coffeapp/services/auth.dart';
import 'package:test_coffeapp/ui/navigationbar/routes_bommtom_navigation_bar.dart';
import 'package:test_coffeapp/ui/onbording/splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
     MyApp()

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) =>MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:StreamBuilder<User?>(
              stream: AuthMethodes().userChanged,
              builder: (context, snapshot){
                return snapshot.data != null ? RouteBottomNavigationBar() : SplashScreen();
              },
            ),
        ),
    );
  }
}



/*MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:StreamBuilder<User?>(
        stream: AuthMethodes().userChanged,
        builder: (context, snapshot){
          return snapshot.data != null ? RouteBottomNavigationBar() : SplashScreen();
        },
      )
      // home: DialogShow(),

    )*/