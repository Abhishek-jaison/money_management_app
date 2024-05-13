import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_management_app/screens/categories/expense_category_listview.dart';
import 'package:money_management_app/screens/categories/income_category_listview.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({super.key});

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}


class _ScreenCategoryState extends State<ScreenCategory> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController=TabController(length: 2,vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
        Tab(text: 'INCOME',),
        Tab(text: 'EXPENSE',),
      ]),
      Expanded(
        child: TabBarView(
          controller: _tabController,
          children: const [
            IncomeCategoryListView(),
            ExpenseCategoryListView()
        ],),
      )
        
      ],
    );
  }
}