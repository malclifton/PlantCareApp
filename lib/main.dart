import 'package:flutter/material.dart';
import 'watering_schedule.dart';
import 'sqlite_service.dart';

void main() {
  runApp(const MyPlantApp());
}

class MyPlantApp extends StatelessWidget{
  const MyPlantApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Plant Weekly',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Color(0xffccd5ae)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants')
      ),
      body: Center(
        child: Text('Welcome to Plant Weekly!⋆.⭒⋆🪴⋆˚.⋆')
      ),
      //Need to add checklist bar
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Plant Weekly'),
              decoration:BoxDecoration(
                color: Color(0xffccd5ae),
              ),
            ),
    //Tiles that lead to the different pages 
          ListTile(
            title: Text('Watering Schedule'),
            //onTap: (){
              //watering_schedule.dart
           // },
          ),
          ListTile(
            title: Text('Plant Diseases'),
          ),
          //....
          ]
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