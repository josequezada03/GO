import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    leading: BackButton(),
    elevation: 0,
    backgroundColor: Colors.grey.shade800,
    title: Text(
      'Mi cuenta',
      style: TextStyle(color: Colors.lightGreen.shade600),
    ),
  );
}
