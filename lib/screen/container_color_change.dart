import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/container_color_change_provider.dart';

class ContainerColorChange extends StatefulWidget {
  const ContainerColorChange({super.key});

  @override
  State<ContainerColorChange> createState() => _ContainerColorChangeState();
}

class _ContainerColorChangeState extends State<ContainerColorChange> {
  double sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container color changed"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.volume_up),
                //----------->>consumer use for full ui not build only build change ui <<-------------->>
                Consumer<ColorChangeProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                  print("slider");
                    return Slider(
                      //----------->>provider initialvalue call <<-------------->>
                      value: value.initialValue,
                      onChanged: (val) {
                        //----------->>provider change value call <<-------------->>
                        value.changeOpachity(val);
                      },
                    );
                  },
                )
              ],
            ),
            //----------->>consumer here use for container color opacity change <<-------------->>
            Consumer<ColorChangeProvider>(
              builder: (BuildContext context, value, Widget? child) {
                print("container color change");
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        //----------->>slider value get  for opacity<<-------------->>
                        color: Colors.red.withOpacity(value.initialValue),
                        child: const Text("Container 1"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        //----------->>slider value get  for opacity<<-------------->>
                        color: Colors.green.withOpacity(value.initialValue),
                        child: const Text("Container 2"),
                      ),
                    ),
                  ],
                );
              },
            )

          ],
        ),
      ),
    );
  }
}
