import 'package:flutter/material.dart';
import 'package:gp_app/widget/appbar_widget.dart';
import 'package:gp_app/widget/profile_widget.dart';
import 'package:gp_app/model/user.dart';
import 'package:gp_app/utils/user_preferences.dart';
import 'package:gp_app/widget/textfield_widget.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/mi_cuenta.dart';

class EditarMiCuenta extends StatefulWidget {
  const EditarMiCuenta({Key? key}) : super(key: key);

  @override
  _EditarMiCuentaState createState() => _EditarMiCuentaState();
}

class _EditarMiCuentaState extends State<EditarMiCuenta> {
  User user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Full Name',
            text: user.name,
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'About',
            text: user.about,
            maxLines: 5,
            onChanged: (about) {},
          ),
        ],
      ),
    );
  }
}
