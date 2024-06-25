import 'package:counter/ui/provider/fvrt.dart';
import 'package:counter/ui/provider/provider.dart';
import 'package:counter/ui/provider/slider.dart';
import 'package:counter/ui/provider/theme_dark.dart';
import 'package:counter/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
      ChangeNotifierProvider( create: (_) => prov(),),
      ChangeNotifierProvider(create: (_) => sliderprov() ),
      ChangeNotifierProvider(create: (_) => favrt()),
      ChangeNotifierProvider(create: (_) => Scheme()),
      
     ],
     child:Builder(builder: (context) {
      final themechanger = Provider.of<Scheme>(context);
       return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themechanger.thememode,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        primaryColor: Colors.pink,
        iconTheme: const IconThemeData(
          color: Colors.green
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.pink
        )
      ),
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const Themechanger() ,
    );
     },)
    );
  }
}

