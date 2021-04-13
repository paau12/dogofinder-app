import 'package:flutter/material.dart';
import 'package:dogofinder_app/size_config.dart';
import 'package:dogofinder_app/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    //Se manda a llamar para la pantalla principal
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
