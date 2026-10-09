import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu du Restaurant',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu du Restaurant'),
        ),
      ),
    );
  }
}