import 'package:ecosync/widgets/reminder_notification.dart';
import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waste Disposal Reminder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DateTimeWidget(),
            DateTimeWidget(),
            DateTimeWidget(),
            DateTimeWidget(),
            DateTimeWidget(),
            DateTimeWidget(),
            DateTimeWidget(),
          ],
        ),
      )
    );
  }
}
