import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    leading: BackButton(),
    elevation: 0,
    backgroundColor: Colors.cyan.shade700,
    title: Text(
      'Mi cuenta',
      style: TextStyle(color: Colors.grey),
    ),
  );
}
