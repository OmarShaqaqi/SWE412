import 'package:flutter/material.dart';
import 'package:senior_project/templates/custom_body_group.dart';
import 'package:senior_project/templates/custom_scaffold.dart';
import 'package:senior_project/widgets/groups/specific_category_expense_row.dart';

class CategoryItemScreen extends StatefulWidget {
  const CategoryItemScreen({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItemScreen> {
  final content = Column(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => SpecificCategoryExpenseRow(),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: widget.title,
      content: CustomBodyGroup(content: content),
    );
  }
}
