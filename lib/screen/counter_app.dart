import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/counter_provider.dart';
import 'package:provider_counter_app/screen/container_color_change.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App user Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //----------->>counter increment and decrement with value <<-------------->>
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //----------->>increment button <<-------------->>
              IconButton(
                onPressed: () {
                  //----------->>increment value use provider <<-------------->>
                  counterProvider.increment();
                },
                icon: const Icon(Icons.add),
              ),
              //----------->>show value <<-------------->>
              //----------->>consumer use because full ui not rebuild only this widget rebuild <<-------------->>
              Consumer<CounterProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  return Text(
                    value.value.toString(),
                  );
                },
              ),
              //----------->>decrement button <<-------------->>
              IconButton(
                onPressed: () {
                  //----------->>decrement value use provider <<-------------->>
                  counterProvider.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContainerColorChange(),
                ),
              );
            },
            child: const Text("Go to container color change"),
          )
        ],
      ),
    );
  }
}
