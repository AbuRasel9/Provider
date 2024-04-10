import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  //----------->>value initialize <<-------------->>
  int _value=1;
  //----------->>get this use get <<-------------->>
  int  get value =>_value;
  
//----------->>increment function <<-------------->>
  increment(){
    _value++;
    notifyListeners();
  }
  //----------->>decrement function <<-------------->>
  decrement(){
    _value--;
    notifyListeners();
  }
}