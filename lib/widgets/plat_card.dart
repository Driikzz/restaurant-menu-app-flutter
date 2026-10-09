import 'package:flutter/material.dart';
import '../models/plat.dart';

class PlatCard extends StatelessWidget {
  final Plat plat;

  const PlatCard({
    super.key,
    required this.plat,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                plat.image,
                height: 180,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              plat.nom,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(plat.description),
            const SizedBox(height: 8),
            Text(
              '${plat.prix.toStringAsFixed(2)} €',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}