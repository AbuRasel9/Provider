import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider/provider.dart';
import 'package:provider_counter_app/screen/favourite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteButtonProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite button change on click"),
        actions: [
          //all favourite button screen
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavouriteButtonScreen()));
          }, icon: const Icon(Icons.favorite))
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
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
