import 'package:flutter/material.dart';

class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final String day;
  final Color iconBackground;
  final Icon icon;

  const Doodle(
      {this.name,
      this.time,
      this.content,
      this.doodle,
      this.day,
      this.icon,
      this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      day: "14.JAN",
      name: "Encontro na Praça Zumira",
      time: "14/01/2021-18:30-19:00",
      content:
          "Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions",
      doodle:
          "https://www.google.com/logos/doodles/2016/abd-al-rahman-al-sufis-azophi-1113th-birthday-5115602948587520-hp2x.jpg",
      icon: Icon(Icons.donut_large, color: Colors.white),
      iconBackground: Colors.blue),
  Doodle(
      day: "18.JAN ",
      name: "Evento Praça da Liberdade",
      time: "18/01/200 - 16:00-17:00 ",
      content:
          " Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions",
      doodle:
          "https://www.google.com/logos/doodles/2015/abu-al-wafa-al-buzjanis-1075th-birthday-5436382608621568-hp2x.jpg",
      icon: Icon(
        Icons.donut_large,
        color: Colors.white,
      ),
      iconBackground: Colors.blueGrey),
  Doodle(
      day: "20.JAN",
      name: "Evento na Rua Maria",
      time: "20/01/200 - 14:00-14:30 ",
      content:
          " Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions",
      doodle:
          "https://www.google.com/logos/doodles/2015/abu-al-wafa-al-buzjanis-1075th-birthday-5436382608621568-hp2x.jpg",
      icon: Icon(
        Icons.donut_large,
        color: Colors.white,
      ),
      iconBackground: Colors.blueGrey),
];
