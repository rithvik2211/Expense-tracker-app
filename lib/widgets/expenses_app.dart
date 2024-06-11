import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<ExpensesApp> {
  final List<Expense> _registedExpense = [
    Expense(
        title: 'Biryani',
        amount: 1200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Kalki',
        amount: 300,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('data'),
          Expanded(
            child: ExpensesList(
              expenses: _registedExpense,
            ),
          ),
        ],
      ),
    );
  }
}
