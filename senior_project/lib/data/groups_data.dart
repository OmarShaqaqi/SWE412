import 'package:flutter/material.dart';
import '../models/group.dart';
import "../models/category.dart" ;
import "../models/expense.dart";

final List<Group> groups = [
  Group(
    name: "Family",
    icon: const Icon(Icons.family_restroom, color: Colors.white),
    groupLeader: "Alice",
    participants: ["Alice", "Bob", "Charlie"],
    categories: [
      Category(
        name: "Groceries",
        expenses: [
          Expense(title: "Fruits", amount: 20.0, date: DateTime.now()),
          Expense(title: "Vegetables", amount: 15.0, date: DateTime.now().subtract(const Duration(days: 2))),
        ],
      ),
      Category(
        name: "Utilities",
        expenses: [
          Expense(title: "Electricity Bill", amount: 100.0, date: DateTime.now().subtract(const Duration(days: 10))),
        ],
      ),
    ],
  ),
  Group(
    name: "Friends",
    icon: const Icon(Icons.group, color: Colors.white),
    groupLeader: "John",
    participants: ["John", "Emma", "Liam"],
    categories: [
      Category(
        name: "Dining",
        expenses: [
          Expense(title: "Dinner", amount: 50.0, date: DateTime.now().subtract(const Duration(days: 3))),
          Expense(title: "Lunch", amount: 30.0, date: DateTime.now().subtract(const Duration(days: 5))),
        ],
      ),
      Category(
        name: "Movies",
        expenses: [
          Expense(title: "Cinema Tickets", amount: 25.0, date: DateTime.now().subtract(const Duration(days: 7))),
        ],
      ),
    ],
  ),
  Group(
    name: "Work",
    icon: const Icon(Icons.work, color: Colors.white),
    groupLeader: "Sophia",
    participants: ["Sophia", "James", "Olivia"],
    categories: [
      Category(
        name: "Team Lunch",
        expenses: [
          Expense(title: "Lunch at XYZ", amount: 200.0, date: DateTime.now().subtract(const Duration(days: 20))),
        ],
      ),
      Category(
        name: "Office Supplies",
        expenses: [
          Expense(title: "Stationery", amount: 40.0, date: DateTime.now().subtract(const Duration(days: 25))),
        ],
      ),
    ],
  ),
  Group(
    name: "Sports Team",
    icon: const Icon(Icons.sports_soccer, color: Colors.white),
    groupLeader: "Mike",
    participants: ["Mike", "Leo", "Jack"],
    categories: [
      Category(
        name: "Equipment",
        expenses: [
          Expense(title: "New Jerseys", amount: 300.0, date: DateTime.now().subtract(const Duration(days: 8))),
        ],
      ),
    ],
  ),
  Group(
    name: "Travel Buddies",
    icon: const Icon(Icons.flight, color: Colors.white),
    groupLeader: "Olivia",
    participants: ["Olivia", "Ethan", "Ava"],
    categories: [
      Category(
        name: "Accommodation",
        expenses: [
          Expense(title: "Hotel Booking", amount: 500.0, date: DateTime.now().subtract(const Duration(days: 12))),
        ],
      ),
      Category(
        name: "Transport",
        expenses: [
          Expense(title: "Car Rental", amount: 200.0, date: DateTime.now().subtract(const Duration(days: 14))),
        ],
      ),
    ],
  ),
];
