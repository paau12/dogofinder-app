import 'package:dogofinder_app/screens/home/home_screen.dart';
import 'package:dogofinder_app/screens/search/components/body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<BottomNavigationBarItem> itemsTab = [
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.home),
        // ignore: deprecated_member_use
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            "Inicio",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        )),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.search),
        // ignore: deprecated_member_use
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            "Buscar",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        )),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.paw),
        // ignore: deprecated_member_use
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            "Mascotas",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        )),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.user),
        // ignore: deprecated_member_use
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            "Perfil",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        )),
  ];

  int selectedIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchPage(),
    Center(
      child: Text(
        "Macotas Page",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Perfil Page",
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          items: itemsTab,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }
}
