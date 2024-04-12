import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/theme_changer_provider.dart';
import 'package:provider_counter_app/screen/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_)=>ThemeChangerProvider(),
      child:  Builder(
        builder: (context) {
          final themeChanger=Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(

            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: Brightness.light
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark
            ),
            home: HomeScreen(),
          );
        }
      ),
    );
  }
}
