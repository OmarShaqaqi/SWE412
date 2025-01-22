import "package:flutter/material.dart";
import "../models/category.dart" ;
import "../models/expense.dart";

final List<Category> dummyCategories = [
  Category(
    name: "Groceries",
    icon: Icon(Icons.local_grocery_store, color: Colors.white,),
    expenses: [
      Expense(
        title: "Apples",
        amount: 10.50,
        date: DateTime.now().subtract(Duration(days: 1)),
      ),
      Expense(
        title: "Milk",
        amount: 5.25,
        date: DateTime.now().subtract(Duration(days: 2)),
      ),
      Expense(
        title: "Bread",
        amount: 3.75,
        date: DateTime.now().subtract(Duration(days: 3)),
      ),
    ],
  ),
  Category(
    name: "Utilities",
    icon: Icon(Icons.flash_on, color: Colors.white),
    expenses: [
      Expense(
        title: "Electricity Bill",
        amount: 120.00,
        date: DateTime.now().subtract(Duration(days: 15)),
      ),
      Expense(
        title: "Water Bill",
        amount: 30.00,
        date: DateTime.now().subtract(Duration(days: 10)),
      ),
    ],
  ),
  Category(
    name: "Transportation",
    icon: Icon(Icons.directions_bus, color: Colors.white),
    expenses: [
      Expense(
        title: "Bus Ticket",
        amount: 2.50,
        date: DateTime.now().subtract(Duration(days: 5)),
      ),
      Expense(
        title: "Gasoline",
        amount: 40.00,
        date: DateTime.now().subtract(Duration(days: 6)),
      ),
      Expense(
        title: "Taxi Ride",
        amount: 15.00,
        date: DateTime.now().subtract(Duration(days: 7)),
      ),
    ],
  ),
  Category(
    name: "Entertainment",
    icon: Icon(Icons.movie, color: Colors.white),
    expenses: [
      Expense(
        title: "Movie Ticket",
        amount: 12.00,
        date: DateTime.now().subtract(Duration(days: 4)),
      ),
      Expense(
        title: "Concert",
        amount: 50.00,
        date: DateTime.now().subtract(Duration(days: 20)),
      ),
    ],
  ),
  Category(
    name: "Dining Out",
    icon: Icon(Icons.restaurant, color: Colors.white),
    expenses: [
      Expense(
        title: "Lunch at Cafe",
        amount: 20.00,
        date: DateTime.now().subtract(Duration(days: 2)),
      ),
      Expense(
        title: "Dinner at Restaurant",
        amount: 35.00,
        date: DateTime.now().subtract(Duration(days: 3)),
      ),
    ],
  ),
];