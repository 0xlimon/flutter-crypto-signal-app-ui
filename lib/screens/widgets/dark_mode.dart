import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/dark_theme_provider.dart';

class DarkModeWidget extends StatefulWidget {
  const DarkModeWidget({super.key});

  @override
  State<DarkModeWidget> createState() => _DarkModeWidgetState();
}

class _DarkModeWidgetState extends State<DarkModeWidget> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return IconButton(
      onPressed: () {
        setState(() {
          themeChange.darkTheme = !themeChange.darkTheme;
        });
      },
      icon: Icon(themeChange.darkTheme ? Icons.dark_mode : Icons.light_mode),
    );
  }
}
