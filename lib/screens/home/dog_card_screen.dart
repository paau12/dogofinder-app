import 'package:flutter/material.dart';
import '../../constants.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: kPrimaryColor, blurRadius: 0.5)
                  ]),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 80, right: 10),
                  child: Text(
                    "Ayuda a encontrar a mis dueños, \nsolo tienes que escanear mi código",
                    style: contentWhite,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Image.asset("assets/images/lolo_dog.png"),
          )
        ],
      ),
    );
  }
}
