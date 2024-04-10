import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class FavouriteButtonScreen extends StatefulWidget {
  const FavouriteButtonScreen({super.key});

  @override
  State<FavouriteButtonScreen> createState() => _FavouriteButtonScreenState();
}

class _FavouriteButtonScreenState extends State<FavouriteButtonScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteButtonProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite button change on click"),
      ),
      body: ListView.builder(
          itemCount: provider.listOfValue.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                //----------->>condition check value add or not in listOfValue <<-------------->>
                if(provider.listOfValue.contains(index)){
                  //if already add value than remove this value form the index
                  provider.removeValue(index);

                }
                //otherwise
                else {
                  //----------->>call provider for add value <<-------------->>
                  provider.addValue(index);
                }
              },
              leading: Text("list $index"),

              trailing: Consumer<FavouriteButtonProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  //----------->>condition check value ase kina oi list a thakle akta icon show korbe na hole arekta <<-------------->>
                  return value.listOfValue.contains(index) ? const Icon(
                      Icons.favorite) : const Icon(Icons.favorite_border_outlined);
                },
              ),
            );
          }),
    );
  }
}
