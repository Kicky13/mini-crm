import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:minicrm/screen/statistic/statistic_screen.dart';

abstract class StatisticScreenModel extends State<StatisticScreen> {

  var currentDate = DateTime.now();
  String currentMonth;
  String currentYear;

  @override
  initState(){
    setDatePicker();
    super.initState();
  }

  setDatePicker(){
    currentMonth = DateFormat("MMMM").format(currentDate);
    currentYear = currentDate.year.toString();
  }

  nextDate(){
    setState(() {
      currentDate = DateTime(currentDate.year, currentDate.month + 1, currentDate.day);
      setDatePicker();
    });
  }

  prevDate(){
    setState(() {
      currentDate = DateTime(currentDate.year, currentDate.month - 1, currentDate.day);
      setDatePicker();
    });
  }

}
