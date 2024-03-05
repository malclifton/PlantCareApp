import 'package:flutter/material.dart';

class WateringSchedulePage extends StatefulWidget {
  const WateringSchedulePage({Key? key});

  @override
  _WateringSchedulePageState createState() => _WateringSchedulePageState();
}

class _WateringSchedulePageState extends State<WateringSchedulePage> {
  String? plantName;
  //map of the plant names and their info
  Map<String, String> plantInfo = {
    'pothos': 'Water: once every 7-10 days\nRepot: once every 2 years\nTrim: As needed\nRotate: Every month',
    'snake plant': 'Water: once every 2-6 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 6 months',
    'fern': 'Water: once every 1-2 weeks\nRepot: once a year\nTrim: As needed\nRotate: Every 2 weeks',
    'zz plant': 'Water: once every 2-3 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 6 months',
    'monstera': 'Water: once every 1-2 weeks\nRepot: once every 2 years\nTrim: As needed\nRotate: Every 3 months',
    'aloe vera': 'Water: once every 2-3 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 4 months',
    'spider plant': 'Water: once every 1-2 weeks\nRepot: once every 2 years\nTrim: As needed\nRotate: Every month',
    'cactus': 'Water: once every 2-4 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Not needed',
    'peace lily': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every month',
    'chinese money plant': 'Water: once every 7-10 days\nRepot: once every 2 years\nTrim: As needed\nRotate: Every month',
    'english ivy': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 2 weeks',
    'rubber plant': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 3 months',
    'anthurium': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every month',
    'money tree': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 6 months',
    'elephant ear': 'Water: once every week\nRepot: once every year\nTrim: As needed\nRotate: Every 2 weeks',
    'ficus': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 3 months',
    'fiddle leaf fig': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every month',
    'jade plant': 'Water: once every 2-3 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 2 months',
    'orchid': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every month',
    'philodendron': 'Water: once every 1-2 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 3 months',
    'string of pearls': 'Water: once every 2-3 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every month',
    'yucca': 'Water: once every 2-3 weeks\nRepot: once every 2-3 years\nTrim: As needed\nRotate: Every 4 months',
  };

  void checkPlantInfo() {
    setState(() {
      //makes the string lowercase to avoid case sensitivity
      if (plantName != null) {
        plantName = plantName!.toLowerCase();
      }
      //check if the users string is in the map above
      if (plantInfo.containsKey(plantName)) {
        //displays the care schedule for the entered plant.
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Schedule for ${plantName?.capitalize()}'),
              content: Text(plantInfo[plantName ?? ''] ?? ''),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                  style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffccd5ae)), 
              ),
                ),
              ],
            );
          },
        );
      } else {
        //creates error message if the user's string doesn't match the data in our 'map'
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Error: This plant is not in our database yet!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                  style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffccd5ae)),
              ),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('.˚🌱Watering Schedule🌱˚.'),
        backgroundColor: Color(0xffccd5ae),
        ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                plantName = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter plant name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkPlantInfo();
              },
              child: Text('Check Schedule'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffccd5ae)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//method to make the first letter of the user's string capital
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}