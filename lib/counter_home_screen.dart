import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/counter_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

  print("build from starting");

    final counterProvider = Provider.of<CounterProvider>(context , listen:
    false);
    return Scaffold(

      appBar: AppBar(
        title: Text("Counter App"),
      ),

      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          print("Only text widget build");
           return Text(counterProvider.count.toString());
        },)
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        counterProvider.counter = counterProvider.count + 1 ;
      }),


    );
  }
}
//Consumer(child: Text(counterProvider.count.toString())),