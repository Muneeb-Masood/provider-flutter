import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{


  int _count = 0;
   set counter(int count) {

      _count = count;

   notifyListeners();
  }

  int get count{

     return _count;
  }



}