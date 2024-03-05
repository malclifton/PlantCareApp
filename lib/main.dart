import 'package:flutter/material.dart';
import 'watering_schedule.dart';
import 'plant_diseases.dart';
import 'plant_caretips.dart';

void main() {
  runApp(const MyPlantApp());
}

class MyPlantApp extends StatelessWidget {
  const MyPlantApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Weekly',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xffccd5ae)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> checklistItems = [
    'Check if your plants need to be watered!',
    'Check if you need to repot your plants!',
    'Weekly Bug Check!',
    'Check for dead leaves'
  ];
  List<bool> checklistItemStates = List.filled(4, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plants')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text('Welcome to Plant Weekly!⋆.⭒⋆🪴⋆˚.⋆'),
            ),
            Card(
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '🌱Weekly To-Do🌱',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        checklistItems.length,
                        (index) => CheckboxListTile(
                          title: Text(checklistItems[index]),
                          value: checklistItemStates[index],
                          onChanged: (bool? value) {
                            setState(() {
                              checklistItemStates[index] = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WateringSchedulePage()),
                      );
                    },
                    child: Container(
                      color: const Color(0xffccd5ae),
                      child: const Center(child: Text('Watering Schedule')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlantDiseasesPage()),
                      );
                    },
                    child: Container(
                      color: const Color(0xffccd5ae),
                      child: const Center(child: Text('Plant Diseases')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PlantCareTips()),
                      );
                    },
                    child: Container(
                      color: const Color(0xffccd5ae),
                      child: const Center(child: Text('Plant Care Tips')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//used for custom colors
MaterialColor createMaterialColor(Color color) {
  final List<double> strengths = <double>[.05];
  final Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (final double strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
