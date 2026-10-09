import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  static const List<String> categories = [
    'Formules',
    'Entrées',
    'Plats',
    'Desserts',
    'Boissons',
  ];

  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu du Restaurant'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  categories.length,
                      (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = index;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedCategory == index
                              ? Colors.deepPurple
                              : Colors.grey[200],
                          foregroundColor: selectedCategory == index
                              ? Colors.white
                              : Colors.black,
                        ),
                        child: Text(categories[index]),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}