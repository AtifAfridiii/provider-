import 'package:counter/ui/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
   print('build');
    final countProv = Provider.of<prov>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Count provider',style: TextStyle(fontSize: 19,),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Consumer<prov>(builder: (context, value, child) {
             print(   'only this builds');
            return Text(value.count.toString(),style: const TextStyle(fontSize: 19),);
           
          },))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        countProv.setCount();
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}