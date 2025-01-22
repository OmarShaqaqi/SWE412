import "package:flutter/material.dart";

class Expense {
  final String title;
  final double amount;
  final DateTime date;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
  });
}
