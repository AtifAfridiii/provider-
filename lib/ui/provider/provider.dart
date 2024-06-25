
import 'package:flutter/material.dart';

class prov with ChangeNotifier{

int _count = 10;

int get count => _count;

void  setCount(){
  _count++;
 notifyListeners();
}

}