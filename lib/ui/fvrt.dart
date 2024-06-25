import 'package:counter/ui/provider/fvrt.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favrt extends StatefulWidget {
  const Favrt({super.key});

  @override
  State<Favrt> createState() => _FavrtState();
}

class _FavrtState extends State<Favrt> {
  @override
  
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favrt'),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
          return Consumer<favrt>(builder: (context, value, child) {
            print('only this builds');
            return Card(
            color: Colors.grey.shade500,
            child: ListTile(
              onTap: (){
                if(value.selecteditem.contains(index)){
               
                   value.removeitem(index);
                }else {
                       value.Additem(index);
                }
                
              },
             title: Text('Item$index'),
             trailing: Icon(value.selecteditem.contains(index)? Icons.favorite : Icons.favorite_border_outlined,color: Colors.red.shade900,),
            ),
          );
  
          },) ;     },),
      ),
    );
  }
}