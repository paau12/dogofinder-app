import 'package:dogofinder_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("No tienes una cuenta?",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
            )),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Registrate",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
