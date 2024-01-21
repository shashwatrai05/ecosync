import 'package:flutter/material.dart';

class DustbinDashboardScreen extends StatelessWidget {
  final Map<String, int> sensorData = {
    'Monday': 5,
    'Tuesday': 2,
    'Wednesday': 4,
    'Thursday': 1,
    'Friday': 3,
    'Saturday': 7,
    'Sunday': 2,
  };

  String findBusiestDay() {
    String busiestDay = '';
    int maxSensorValue = 0;

    sensorData.forEach((day, value) {
      if (value > maxSensorValue) {
        maxSensorValue = value;
        busiestDay = day;
      }
    });

    return busiestDay;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dustbin Dashboard'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Sensor Data for Each Day',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 20),
              ...sensorData.entries.map((entry) => buildSensorDataRow(entry.key, entry.value)),
              SizedBox(height: 30),
              buildMostBusyDayCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSensorDataRow(String day, int sensorValue) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                day,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 8),
              Text(
                'Trash Collected:',
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),
          Text(
            '$sensorValue times',
            style: TextStyle(fontSize: 18, color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget buildMostBusyDayCard() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.timeline, size: 32, color: Colors.green),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Most Busy Day:',
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              SizedBox(height: 8),
              Text(
                findBusiestDay(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
