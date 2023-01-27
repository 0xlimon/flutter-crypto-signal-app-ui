import 'dart:ui';

import 'package:crypto_signal/constants/constants.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      textTheme: TextTheme(
        subtitle1: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: isDarkTheme
              ? customColors.greyScale600
              : Color.fromARGB(255, 129, 129, 129),
        ),
      ),
      fontFamily: 'MO',
      scaffoldBackgroundColor: isDarkTheme
          ? customColors.DarkBackground
          : customColors.LightBackground,
      backgroundColor: isDarkTheme
          ? customColors.DarkBackground
          : customColors.LightBackground,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: isDarkTheme
                ? customColors.greyScale300
                : customColors.greyScale800,
          ),
          elevation: 0.0,
          titleTextStyle: isDarkTheme
              ? TextStyle(
                  color: customColors.greyScale300,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                )
              : TextStyle(
                  color: customColors.greyScale800,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
          iconTheme: IconThemeData(
            color: isDarkTheme
                ? customColors.greyScale300
                : customColors.greyScale800,
          )),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: customColors.greyScale400,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: customColors.primaryGreen800),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isDarkTheme
                ? customColors.greyScale300
                : customColors.greyScale400,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: isDarkTheme
            ? customColors.greyScale800
            : Color.fromARGB(255, 255, 255, 255),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: isDarkTheme ? customColors.greyScale800 : Colors.white,
      ),
      tabBarTheme: TabBarTheme(
        labelColor:
            isDarkTheme ? customColors.greyScale300 : customColors.greyScale800,
      ),
    );
  }
}
