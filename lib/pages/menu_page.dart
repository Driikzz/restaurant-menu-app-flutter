import 'package:flutter/material.dart';
import '../models/plat.dart';

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

  final List<Plat> plats = [
    Plat(
      'Menu Burger',
      'assets/images/menuburger.jpeg',
      18.90,
      'Burger maison accompagné de frites et d\'une boisson.',
      'Formules',
    ),
    Plat(
      'Salade César',
      'assets/images/salde-cesars.jpg',
      8.50,
      'Salade, poulet, parmesan et sauce César.',
      'Entrées',
    ),
    Plat(
      'Burger maison',
      'assets/images/burgermaison.jpg',
      15.90,
      'Steak, cheddar, oignons et sauce maison.',
      'Plats',
    ),
    Plat(
      'Pizza Margherita',
      'assets/images/margeritha.jpg',
      13.50,
      'Sauce tomate, mozzarella et basilic.',
      'Plats',
    ),
    Plat(
      'Tiramisu',
      'assets/images/tiramisu.jpg',
      6.50,
      'Tiramisu traditionnel au café.',
      'Desserts',
    ),
    Plat(
      'Coca-Cola',
      'assets/images/coca.jpg',
      3.50,
      'Coca-Cola 33 cl.',
      'Boissons',
    ),
  ];

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