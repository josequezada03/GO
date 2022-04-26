import 'package:flutter/material.dart';

class Event {
  final String title;
  final String descripcion;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;
  final bool isAllDay;

  const Event({
    required this.title,
    required this.descripcion,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.cyan,
    this.isAllDay = false,
  });
}
