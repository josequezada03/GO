import 'package:flutter/material.dart';

import '../../widget/completed_list_widget.dart';

class Historial extends StatefulWidget {
  const Historial({Key? key}) : super(key: key);

  @override
  _HistorialState createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CompletedListWidget(),
    );
  }
}
