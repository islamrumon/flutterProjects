import 'package:flutter/material.dart';
class AppBarIcon{
  AppBarIcon({this.title,this.icon});
  final String title;
  final IconData icon;
}

 List<AppBarIcon> choices =  <AppBarIcon>[
   AppBarIcon(title: 'Search', icon: Icons.search),
   AppBarIcon(title: 'Settings', icon: Icons.directions_boat),
   AppBarIcon(title: 'Help', icon: Icons.directions_bus),
   AppBarIcon(title: 'Contact us', icon: Icons.directions_railway),
   AppBarIcon(title: 'Others BBC Aps', icon: Icons.directions_walk),
];