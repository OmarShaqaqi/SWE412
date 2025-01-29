import 'package:flutter/material.dart';
import 'package:senior_project/templates/custom_scaffold.dart';
import 'package:senior_project/templates/custom_body_group.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: 'Transactions',
        content: CustomBodyGroup(
        content: SingleChildScrollView(
        child: Column(
        children: [
        _buildTransactionSection(
        title: 'April',
        transactions: [
        _TransactionItem(
        title: 'Salary',
        time: '18:27 - April 30',
        category: 'Monthly',
        amount: 4000.00,
    ),
                _TransactionItem(
                  title: 'Groceries',
                  time: '17:00 - April 24',
                  category: 'Pantry',
                  amount: -100.00,
                ),
                _TransactionItem(
                  title: 'Rent',
                  time: '8:30 - April 15',
                  category: 'Rent',
                  amount: -674.40,
                ),
                _TransactionItem(
                  title: 'Transport',
                  time: '9:30 - April 08',
                  category: 'Fuel',
                  amount: -4.13,
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildTransactionSection(
              title: 'March',
              transactions: [
                _TransactionItem(
                  title: 'Food',
                  time: '19:30 - March 31',
                  category: 'Dinner',
                  amount: -70.40,
                ),
              ],
            ),
          ],
        ),
      ),
    )
    );
  }

  Widget _buildTransactionSection({
    required String title,
    required List<_TransactionItem> transactions,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 208, 158),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: transactions.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                leading: Image.asset(
                  _getIconForCategory(transaction.category),
                  width: 80,
                  height: 80,
                ),
                title: Row(
                  children: [
                    Text(
                      transaction.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      transaction.category,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  transaction.time,
                  style: const TextStyle(color: Color.fromARGB(255, 0, 104, 255),fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '${transaction.amount < 0 ? '-' : ''}\$${transaction.amount.abs().toStringAsFixed(2)}',
                  style: TextStyle(
                    color: transaction.amount > 0
                        ? const Color.fromARGB(255, 9, 48, 48)
                        : const Color.fromARGB(255, 0, 104, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String _getIconForCategory(String category) {
    switch (category.toLowerCase()) {
      case 'monthly':
        return 'assets/IconSalary.png';
      case 'pantry':
        return 'assets/IconGroceries.png';
      case 'rent':
        return 'assets/IconRent.png';
      case 'fuel':
        return 'assets/IconTransport.png';
      default:
        return 'assets/IconGroceries.png';
    }
  }
}

class _TransactionItem {
  final String title;
  final String time;
  final String category;
  final double amount;

  _TransactionItem({
    required this.title,
    required this.time,
    required this.category,
    required this.amount,
  });
}