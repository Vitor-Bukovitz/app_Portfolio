import 'package:flutter/material.dart';
import 'package:br/timeline/timeline.dart';

void main() => runApp(AgendaScreen());

class AgendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Timeline Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TimelinePage(title: 'Agenda'));
  }
}
