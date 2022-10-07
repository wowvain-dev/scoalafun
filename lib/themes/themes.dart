import 'package:flutter/material.dart';

class Themes {
  ThemeData customDarkTheme() {
    TextTheme customTextTheme(TextTheme base) {
      return base.copyWith(
          headline1: base.headline1!.copyWith(
            fontFamily: 'Poppins',
          ),
          headline2: base.headline2!.copyWith(
            fontFamily: 'Poppins',
          ),
          headline3: base.headline3!.copyWith(fontFamily: 'Poppins'),
          headline4: base.headline4!.copyWith(fontFamily: 'Poppins'),
          headline5: base.headline5!.copyWith(fontFamily: 'Poppins', fontSize: 18),
          headline6: base.headline6!.copyWith(fontFamily: 'Poppins', fontSize: 15));
    }

    final ThemeData darkTheme = ThemeData.dark();

    return darkTheme.copyWith(
      scaffoldBackgroundColor: const Color(0xFF2A2B2A),
      textTheme: customTextTheme(darkTheme.textTheme),
      indicatorColor: Colors.white70,
      primaryIconTheme: darkTheme.iconTheme.copyWith(
        color: Colors.white70,
      ),
    );
  }

  ThemeData customLightTheme() {
    TextTheme customTextTheme(TextTheme base) {
      return base.copyWith(
          headline1: base.headline1!.copyWith(
            fontFamily: 'Poppins',
          ),
          headline2: base.headline2!.copyWith(
            fontFamily: 'Poppins',
          ),
          headline3: base.headline3!.copyWith(fontFamily: 'Poppins'),
          headline4: base.headline4!.copyWith(fontFamily: 'Poppins'),
          headline5: base.headline5!.copyWith(fontFamily: 'Poppins'),
          headline6: base.headline6!.copyWith(fontFamily: 'Poppins'));
    }

    final ThemeData lightTheme = ThemeData.light();

    return lightTheme.copyWith(
      scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      textTheme: customTextTheme(lightTheme.textTheme),
      indicatorColor: Colors.black54,
      primaryIconTheme: lightTheme.iconTheme.copyWith(
        color: Colors.black54,
      ),
    );
  }
}
