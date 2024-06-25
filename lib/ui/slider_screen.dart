import 'package:counter/ui/provider/slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Slider_Screen extends StatefulWidget {
  const Slider_Screen({super.key});

  @override
  State<Slider_Screen> createState() => _Slider_ScreenState();
}

class _Slider_ScreenState extends State<Slider_Screen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Slider screen'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Consumer<sliderprov>(builder: (context, value, child) {
          
             return Slider(
              min: 0.0,
              max: 1.0,
              activeColor: Colors.red.shade900,
              inactiveColor: Colors.black,
              value: value.value, onChanged: (val){
                 value.setSlider(val);

             });
           },),


           Consumer<sliderprov>(builder: (context, value, child) {
          
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 91,
                   decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(value.value),
                   ),
                  ),
                ),
                 Expanded(
                  child: Container(
                    height: 91,
                   decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(value.value),
                   ),
                  ),
                )
              ],
             );
           },),

          ],
        ),
    );
  }
}