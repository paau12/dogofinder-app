import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class Animal {
  String nombre;
  String raza;
  int edad;
  String ubicacion;
  bool isFemale;
  String imageUrl;
  Color backgroundColor;

  Animal({
    this.nombre,
    this.raza,
    this.edad,
    this.ubicacion,
    this.isFemale,
    this.imageUrl,
    this.backgroundColor,
  });
}

class LostPetsScreen extends StatefulWidget {
  @override
  _LostPetsScreenState createState() => _LostPetsScreenState();
}

class _LostPetsScreenState extends State<LostPetsScreen> {
  int selectedAnimalIconIndex = 0;
  final List<Animal> animals = [
    Animal(
      nombre: 'Chesster',
      raza: 'Bichón Maltés',
      edad: 2,
      ubicacion: 'Monterrey, Nuevo León',
      isFemale: false,
      imageUrl: 'assets/images/chesster.png',
      backgroundColor: kPrimaryColor,
    ),
    Animal(
      nombre: 'Negris',
      raza: 'Border Collie',
      edad: 5,
      ubicacion: 'Monterrey, Nuevo León',
      isFemale: true,
      imageUrl: 'assets/images/negris.png',
    ),
    Animal(
      nombre: 'Jazz',
      raza: 'Criollo',
      edad: 6,
      ubicacion: 'Monterrey, Nuevo León',
      isFemale: true,
      imageUrl: 'assets/images/jazz.png',
    ),
  ];

  List<String> animalTypes = [
    'Perros',
    'Gatos',
  ];

  List<IconData> animalIcons = [
    FontAwesomeIcons.dog,
    FontAwesomeIcons.cat,
  ];

  Widget buildAnimalIcon(int index) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                selectedAnimalIconIndex = index;
              });
            },
            child: Material(
              color: selectedAnimalIconIndex == index
                  ? kPrimaryColor
                  : Colors.white,
              elevation: 8.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  animalIcons[index],
                  size: 30.0,
                  color: selectedAnimalIconIndex == index
                      ? Colors.white
                      : kPrimaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            animalTypes[index],
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 120.0,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 24.0, top: 8.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: animalTypes.length,
                  itemBuilder: (context, index) {
                    return buildAnimalIcon(index);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: animals.length,
                  itemBuilder: (context, index) {
                    final animal = animals[index];

                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: 10.0,
                        right: 20.0,
                        left: 20.0,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(30.0),
                            elevation: 4.0,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 20.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  SizedBox(
                                    width: deviceWidth * 0.4,
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            Text(
                                              animal.nombre,
                                              style: TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(animal.isFemale
                                                ? FontAwesomeIcons.venus
                                                : FontAwesomeIcons.mars),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          animal.raza,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          '${animal.edad} años',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.mapMarkedAlt,
                                              color: kPrimaryColor,
                                              size: 16.0,
                                            ),
                                            SizedBox(
                                              width: 6.0,
                                            ),
                                            Text(
                                              'Ubicación: ${animal.ubicacion}',
                                              style: TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                height: 190.0,
                                width: deviceWidth * 0.4,
                              ),
                              Image(
                                image: AssetImage(animal.imageUrl),
                                height: 220.0,
                                fit: BoxFit.fitHeight,
                                width: deviceWidth * 0.4,
                              ),
                            ],
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
