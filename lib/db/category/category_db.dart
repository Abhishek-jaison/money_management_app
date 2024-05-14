import 'package:hive_flutter/adapters.dart';
import 'package:money_management_app/models/category/category_model.dart';

const CATEGORY_DB_NAME = 'category-database';

abstract class CategoryDbfunctions{
  Future<List<Categorymodel>> getCategories();
  Future<void> insertCategory(Categorymodel value);
}

class CategoryDb implements CategoryDbfunctions{
  @override
  Future<void> insertCategory(Categorymodel value) async{

  final _categoryDB= await Hive.openBox<Categorymodel>(CATEGORY_DB_NAME);    
 _categoryDB.add(value); 
  }
  
  @override
  Future<List<Categorymodel>> getCategories() async{
  final _categoryDB= await Hive.openBox<Categorymodel>(CATEGORY_DB_NAME);    
  return _categoryDB.values.toList();
  }
  
}