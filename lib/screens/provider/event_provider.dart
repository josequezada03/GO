import 'dart:html';

import 'package:gp_app/model/event_model.dart';
import 'package:gp_app/utils/utils_event.dart';
import 'package:flutter/cupertino.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [];

  List<Event> get events => _events;

  void addEvent(Event event) {
    _events.add(event);

    notifyListeners();
  }
}
