import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Truckin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: CustomColors.orangePrimary,
        fontFamily: 'OpenSans',
        buttonTheme: ButtonThemeData(
          buttonColor: CustomColors.orangePrimary,
          textTheme: ButtonTextTheme.accent,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                secondary: Colors.white,
              ), // Text color
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 16),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
