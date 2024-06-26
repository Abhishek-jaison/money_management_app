import 'package:flutter/material.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/models/category/category_model.dart';
import 'package:money_management_app/screens/categories/screen_category.dart';
import 'package:money_management_app/screens/home/widgets/bottom_navigation.dart';
import 'package:money_management_app/screens/transactions/Screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  static ValueNotifier<int> selectedIndexNotifier=ValueNotifier(0);

  final  _pages=const[
    ScreenTransactions(),
    ScreenCategory()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[100],

      appBar: AppBar(title: Text('Money Manager'),
      centerTitle: true,),

      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: selectedIndexNotifier,
        builder: (BuildContext context,int updatedIndex, _){
          return _pages[updatedIndex];
        },
        )
      ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      if(selectedIndexNotifier.value==0){
        print('add transaction');
      }
      else{
        print('add category');
        final _sample=Categorymodel(
          id :DateTime.now().millisecondsSinceEpoch.toString(),
          name: 'Travel',
          type: CategoryType.expense,

        );
        CategoryDb().insertCategory(_sample);
      }
    },
    child: Icon(Icons.add),
    ),
    );
  }
}