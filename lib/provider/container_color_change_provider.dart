import 'package:flutter/foundation.dart';

class ColorChangeProvider with ChangeNotifier{
  //----------->>initialize value <<-------------->>
  double _initialValue=.1;
  //----------->>get value <<-------------->>
  double get initialValue=>_initialValue;
  
  //----------->>value change <<-------------->>
  changeOpachity(val){
    _initialValue=val;
    notifyListeners();
  }
}