import "expense.dart";
import "package:flutter/material.dart";
class Category {
  final String name;
  final List<Expense> expenses ;
  Icon? icon = const Icon(Icons.attach_money);

  Category({required this.name, required this.expenses, this.icon});
}