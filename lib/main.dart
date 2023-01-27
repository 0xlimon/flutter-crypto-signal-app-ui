import 'package:crypto_signal/providers/dark_theme_provider.dart';
import 'package:crypto_signal/screens/main_screen.dart';
import 'package:crypto_signal/screens/spot_signal_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: MainScreen(),
          );
        },
      ),
    );
  }
}
