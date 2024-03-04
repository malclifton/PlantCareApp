import 'package:flutter/material.dart';

class PlantDiseasesPage extends StatelessWidget {
  const PlantDiseasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plant Diseases')),
      body: const Center(
        child: Text('Plant Diseases Page'),
      ),
    );
  }
}
