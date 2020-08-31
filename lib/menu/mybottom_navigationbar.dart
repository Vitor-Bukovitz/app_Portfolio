import 'package:br/screens/teste_tela.dart';
import 'package:br/screens/galeria_screen.dart';
import 'package:br/screens/contato_screen.dart';
import 'package:br/screens/agenda_screen.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    teste_tela(),
    GaleriaScreen(),
    AgendaScreen(),
    ContatoScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.blue,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_library,
              color: Colors.blue,
            ),
            title: Text(
              "",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.blue,
            ),
            title: Text(
              "",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.blue,
            ),
            title: Text(
              "",
            ),
          ),
        ],
      ),
    );
  }
}
