

import 'package:flutter/material.dart';

class sliderprov with ChangeNotifier {

double _value = 1.0 ;
double get  value => _value;

void setSlider (double val){
_value=val;
notifyListeners();
}


}