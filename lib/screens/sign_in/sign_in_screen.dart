import 'package:dogofinder_app/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicia Sesión"),
      ),
      body: Body(),
    );
  }
}
