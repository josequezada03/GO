import 'package:flutter/material.dart';

const english = Locale('en');
const spanish = Locale('es');

const supportedLocales = [
  english,
  spanish,
]; 

/*
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/inicio.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/mensajeria.dart';
import 'package:gp_app/screens/homepage.dart';
import 'package:gp_app/screens/login_page.dart';
import 'package:gp_app/screens/provider/todos.dart';
import 'package:gp_app/screens/prueba.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/mi_cuenta.dart';
import 'package:provider/provider.dart';



 el main, justo abajo del void main

WidgetsFlutterBinding.ensureInitialized();
await EasyLocalization.ensureInitialized();

runApp(EasyLocalization(
  supportedLocale: supportedLocales,
  path: 'assets/translations',
  fallbackLocale: english,
  child: MyApp(),
)
);


info.plist de la sección de ios

<string>en</string>
	<string>es</string>

 @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.localizationDelegates,
          locale: context.locale,
          title: _title,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.cyan.shade700,
          ),
          home: LogIn(
              //key: UniqueKey(),
              //title: ('Titulo prueba'),
              ),
        ),
      );
  
}
  */

  