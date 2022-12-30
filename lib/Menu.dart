
import 'package:flutter/material.dart';
import 'History.dart';


class Menu extends StatefulWidget {
  
   Menu({super.key});

  @override
  
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int index = 0;
  List showClass = [Home()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showClass[index],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap: (((value) {
        index =  value;
      })),  
      items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile", backgroundColor: Colors.blue),
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "logout"),
          


      ]
      ),

    );
  }
}