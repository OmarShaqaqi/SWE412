import 'package:flutter/material.dart';
import "./expense_row.dart";
import "../dialog_utils.dart";

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        right: 8,
        left: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Submitted Expenses"),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    expenseDetails(context);
                  },
                  child: ExpenseRow()),
            ),
          ),
        ],
      ),
    );
  }
}
