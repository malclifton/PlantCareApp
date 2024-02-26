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
        primarySwatch: Colors.lightGreen,
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Plant Weekly'),
              decoration:BoxDecoration(
                color: Colors.green,
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