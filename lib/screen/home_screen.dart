import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/theme_changer_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print("build");
    final themeChanger=Provider.of<ThemeChangerProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title:  const Text("Light Theme"),
              value: ThemeMode.light,
              groupValue:themeChanger.themeMode,
              onChanged: (value) {
                themeChanger.setTheme(ThemeMode.light);
              }),
          RadioListTile<ThemeMode>(
              title:  const Text("Dark Theme"),
              value: ThemeMode.dark,
              groupValue:themeChanger.themeMode,
              onChanged: (value) {
                themeChanger.setTheme(ThemeMode.dark);
              }),
          RadioListTile<ThemeMode>(
              title:  const Text("System Theme"),
              value: ThemeMode.system,
              groupValue:themeChanger.themeMode,
              onChanged: (value) {
                themeChanger.setTheme(ThemeMode.system);
              })
        ],
      ),
    );
  }
}
