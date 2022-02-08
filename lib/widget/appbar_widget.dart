import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Text('Mi cuenta'),
    centerTitle: true,
    leading: BackButton(),
    elevation: 0,
    backgroundColor: Colors.cyan.shade700,
  );
}
