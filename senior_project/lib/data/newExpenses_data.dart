import 'package:flutter/material.dart';
import 'package:senior_project/models/expense.dart';
import "../models/group.dart";

DateTime now = DateTime.now();

final List<Expense> expenses = [
  Expense(amount: 20, time: DateTime(now.year, now.month, now.day, 17, 0)),
  Expense(amount: 100, time: DateTime(now.year, now.month, now.day, 15, 0)),
  Expense(amount: 19, time: DateTime(now.year, now.month, now.day - 1, 20, 0)),
];
