import 'package:dogofinder_app/components/custom_surffix_icon.dart';
import 'package:dogofinder_app/components/default_button.dart';
import 'package:dogofinder_app/components/form_error.dart';
import 'package:dogofinder_app/components/no_account_text.dart';
import 'package:dogofinder_app/components/social_card.dart';
import 'package:dogofinder_app/constants.dart';
import 'package:dogofinder_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:dogofinder_app/screens/sign_in/components/sign_form.dart';
import 'package:dogofinder_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHight * 0.04),
                Text(
                  "Bienvenido a DogoFinder",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Inicia sesión con tu correo y contraseña \nó con alguna red social",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
