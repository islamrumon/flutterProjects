import 'package:flutter/material.dart';
class appBarIcon{
  const appBarIcon({this.title,this.icon});
  final String title;
  final IconData icon;
}

const List<appBarIcon> choices = const <appBarIcon>[
  const appBarIcon(title: 'Search', icon: Icons.search),
  const appBarIcon(title: 'Settings', icon: Icons.directions_boat),
  const appBarIcon(title: 'Help', icon: Icons.directions_bus),
  const appBarIcon(title: 'Contact us', icon: Icons.directions_railway),
  const appBarIcon(title: 'Others BBC Aps', icon: Icons.directions_walk),
];