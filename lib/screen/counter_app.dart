import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/counter_provider.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              context.read<CounterProvider>().increment();
            }, icon: const Icon(Icons.add),),
            Text(context.watch<CounterProvider>().counterValue.toString()),
            IconButton(onPressed: (){
              context.read<CounterProvider>().drecremet();

            }, icon: const Icon(Icons.remove),),


          ],
        ),
      ),
    );
  }
}
