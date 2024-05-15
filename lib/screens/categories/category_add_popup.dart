import 'package:flutter/material.dart';

Future<void> showcategoryaddpopup(BuildContext context) async{
  showDialog(context: context,
   builder: (ctx) {
    return SimpleDialog(
      title: const Text('Add Category'),
      children: [
        TextFormField(),
        ElevatedButton(onPressed: (){}, child: Text('Add'))
      ],
    );
   });

}