import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/provider.dart';
import 'package:provider_counter_app/screen/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_)=>FavouriteButtonProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
