import 'package:baac_reservation/widgets/calendar.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       Calendar(),
    );
  }
}