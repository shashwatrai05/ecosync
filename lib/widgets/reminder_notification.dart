import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class DateTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String formattedDate = _generateRandomDate();
    String formattedTime = '8:00 AM';
    String formattedDay = _generateRandomDay();

    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                ),
                Text(
                  formattedDate,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Icon(
                  Icons.today,
                  color: Colors.white,
                ),
                Text(
                  formattedDay,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Dispose Waste',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
                Text(
                  ' $formattedTime',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _generateRandomDate() {
    DateTime now = DateTime.now();
    DateTime randomDate = DateTime(now.year, now.month, Random().nextInt(30) + 1);
    return DateFormat('MMMM d, yyyy').format(randomDate);
  }

  String _generateRandomDay() {
    List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    return days[Random().nextInt(days.length)];
  }
}
