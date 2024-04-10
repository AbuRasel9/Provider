import 'package:flutter/cupertino.dart';

class FavouriteButtonProvider with ChangeNotifier{
  List<int> listOfValue=[];
  //----------->>add value listOfValue list <<-------------->>
  addValue(int value){
    listOfValue.add(value);
    notifyListeners();
  }
  //----------->>remove value form listOfValue list <<-------------->>
  removeValue(int value){
    listOfValue.remove(value);
    notifyListeners();
  }
}