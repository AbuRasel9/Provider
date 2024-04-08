import 'package:flutter/material.dart';
import 'package:provider_counter_app/provider/counter_provider.dart';
import 'package:provider_counter_app/screen/counter_app.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>CounterProvider(),)
      ],
      child: MaterialApp(
        home: CounterApp(),
      ),
    );
  }
}
