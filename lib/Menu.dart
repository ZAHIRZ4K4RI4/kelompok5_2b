import 'dart:html';

import 'package:flutter/material.dart';
import 'History.dart';
import 'main.dart';

class Menu extends StatefulWidget {
  
   Menu({super.key});

  @override
  
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int seletedItem = 0;
  List<Widget> listwidget = <Widget>[
    Home(),
    MyWidget()
    ];
    static get contactModel =>null;
    static get onRemove => null;
    void onTap(int index){
      setState(() {
        seletedItem = index;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listwidget.elementAt(seletedItem),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: seletedItem,
      onTap: onTap,
      items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home", backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "logout"),
          
          


      ]
      ),

    );
  }
}