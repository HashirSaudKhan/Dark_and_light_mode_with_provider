import 'package:dark_theme_mode/providers/togglescreenprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToggleSceen extends StatefulWidget {
  const ToggleSceen({super.key});

  @override
  State<ToggleSceen> createState() => _ToggleSceenState();
}

class _ToggleSceenState extends State<ToggleSceen> {
  @override
  Widget build(BuildContext context) {
    final themechanger =
        Provider.of<ToggleScreenProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "HSK THEME",
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Column(
          children: [
            RadioListTile<ThemeMode>(
                title: const Text("Light Mode"),
                value: ThemeMode.light,
                groupValue: themechanger.themeMode,
                onChanged: (value) {
                  themechanger.settheme =
                      value!; // Use the setter method correctly
                }),
            RadioListTile<ThemeMode>(
                title: const Text("Dark Mode"),
                value: ThemeMode.dark,
                groupValue: themechanger.themeMode,
                onChanged: (value) {
                  themechanger.settheme = value!;
                }),
            RadioListTile<ThemeMode>(
                title: const Text("System Mode"),
                value: ThemeMode.system,
                groupValue: themechanger.themeMode,
                onChanged: (value) {
                  themechanger.settheme = value!;
                }),
          ],
        ));
  }
}
