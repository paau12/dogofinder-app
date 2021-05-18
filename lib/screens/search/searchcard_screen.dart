import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final String itemOneImg;
  final String itemOneTitle;
  final Color itemOneBg;
  final Color itemOneColor;
  final String itemTwoImg;
  final String itemTwoTitle;
  final Color itemTwoBg;
  final Color itemTwoColor;

  const SearchCard({
    Key key,
    this.itemOneImg,
    this.itemOneTitle,
    this.itemOneBg,
    this.itemOneColor,
    this.itemTwoImg,
    this.itemTwoTitle,
    this.itemTwoBg,
    this.itemTwoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              width: double.infinity,
              height: 300,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: itemOneBg,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            itemOneTitle,
                            style: TextStyle(
                                fontSize: 11, height: 1.5, color: itemOneColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -20,
                    top: -10,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(itemOneImg),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              height: 300,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: itemTwoBg,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            itemTwoTitle,
                            style: TextStyle(
                                fontSize: 11, height: 1.5, color: itemTwoColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -20,
                    top: -10,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(itemTwoImg),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
