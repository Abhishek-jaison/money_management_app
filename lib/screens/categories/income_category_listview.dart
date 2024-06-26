import 'package:flutter/material.dart';

class IncomeCategoryListView extends StatelessWidget {
  const IncomeCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx,index){
        return Card(
          child: ListTile(
            title: Text('Income Category $index'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),),
          ),
        );
      },
      separatorBuilder: (ctx,index){
        return const SizedBox(height: 10,);
      },
      itemCount: 100,
      
    );
  }
}