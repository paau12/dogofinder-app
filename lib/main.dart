import 'package:dogofinder_app/screens/splash/routs.dart';
import 'package:dogofinder_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:dogofinder_app/constants.dart';
import 'package:dogofinder_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DogoFinder',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
