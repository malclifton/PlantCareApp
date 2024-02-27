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
  List<String> checklistItems = [
    'Time to water your ...!', //... will be replaced with the user inputed plant
    'Time to repot your ...!',
    'Weekly Bug Check!',
    'Check for dead leaves'
  ];
  List<bool> checklistItemStates = List.filled(4, false);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants')
      ),
      body:Column(
       children:[
        Center(
        child: Text('Welcome to Plant Weekly!⋆.⭒⋆🪴⋆˚.⋆'),
        ),
       // SizedBox(height: 20),
        Card(
          //width: double.infinity,
          margin: EdgeInsets.all(16),
          //child:Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  '🌱Weekly To-Do🌱',
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    checklistItems.length,
                    (index) => CheckboxListTile(
                      title: Text(checklistItems[index]),
                      value: checklistItemStates[index],
                      onChanged: (bool? value) {
                        setState((){
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
       ],
      ),
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
          //ListTile(....)
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