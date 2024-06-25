import 'package:flutter/material.dart';

class favrt with ChangeNotifier {

final List<int> _selecteditem = [];
List<int> get selecteditem => _selecteditem;

void Additem(int item){
  _selecteditem.add(item);
  notifyListeners();
}

void removeitem(int item){
  _selecteditem.remove(item);
  notifyListeners();
}

}