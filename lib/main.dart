



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/counter_home_screen.dart';
import 'package:untitled/counter_provider.dart';

void main(){

runApp(
  ChangeNotifierProvider(create: (context) => CounterProvider(),
  child: MaterialApp(


      home: HomeScreen(),

  ))

);


}