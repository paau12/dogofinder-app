import 'package:dogofinder_app/components/custom_surffix_icon.dart';
import 'package:dogofinder_app/constants.dart';
import 'package:dogofinder_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../size_config.dart';
import '../dog_card_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Hola, Paulina",
                  style: appTitle,
                ),
                SizedBox(height: 10),
                Text(
                  "Estamos contentos de que te unas a nuestra familia de \nDogoFinder, te mostramos las noticias más recientes.",
                  style: contentBlack,
                ),
                SizedBox(height: 50),
                PetCard(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
