import 'package:flutter/material.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu du Mimi Restaurant',
      home: const MenuPage(),
    );
  }
}