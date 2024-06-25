import 'package:counter/ui/provider/theme_dark.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Themechanger extends StatefulWidget {
  const Themechanger({super.key});

  @override
  State<Themechanger> createState() => _ThemechangerState();
}

class _ThemechangerState extends State<Themechanger> {
  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      appBar: AppBar(
      
        centerTitle: true,
        title: const Text('Theme'),
      
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Scheme>(builder: (context, value, child) {
           return RadioListTile<ThemeMode>(
            title: const Text('Light mode'),
            value: ThemeMode.light, 
            groupValue: value.thememode, 
            onChanged: value.setTheme
            );
          },), 
          Consumer<Scheme>(builder: (context, value, child) {
            return   RadioListTile<ThemeMode>(
            title: const Text('Dark mode'),
            value: ThemeMode.dark, 
            groupValue: value.thememode, 
            onChanged: value.setTheme
            );
          },),

          Consumer<Scheme>(builder: (context, value, child) {
            return RadioListTile<ThemeMode>(
            title: const Text('sysytem mode'),
            value: ThemeMode.system, 
            groupValue: value.thememode, 
            onChanged: value.setTheme
            );
          },),
          const Icon(Icons.favorite)
            
        ],
      ),
    );
  }
}