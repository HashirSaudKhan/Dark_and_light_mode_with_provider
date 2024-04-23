import 'package:dark_theme_mode/providers/togglescreenprovider.dart';
import 'package:dark_theme_mode/screens/togglescreen.dart';
import 'package:dark_theme_mode/themes/darktheme.dart';
import 'package:dark_theme_mode/themes/lighttheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ToggleScreenProvider(),
        child: Builder(
          builder: (BuildContext context) {
            final themeChanger = Provider.of<ToggleScreenProvider>(context);
            return MaterialApp(
              themeMode: themeChanger.themeMode,
              theme: lighttheme,
              darkTheme: darktheme,
              debugShowCheckedModeBanner: false,
              home: const ToggleSceen(),
            );
          },
        ));
  }
}
