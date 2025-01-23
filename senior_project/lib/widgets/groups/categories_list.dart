import 'package:flutter/material.dart';
import "package:senior_project/screens/groups/category_item.dart";
import "package:senior_project/templates/custom_scaffold.dart";
import "../../data/categories_data.dart";
import "../../screens/groups/group_item.dart";
import "../../templates/custom_body_group.dart";
import "../../screens/groups/add_group.dart";
import "../dialog_utils.dart";

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final content = GridView.builder(
        itemCount: dummyCategories.length + 1, //for the static part (add group)
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          if (index == dummyCategories.length) {
            return GestureDetector(
              onTap: () {
                addCategory(context);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors
                          .green, // Background color for the "Add New" button
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.add, // Add icon
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Add New",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          } else {
            // Dynamic group items
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryItemScreen(title: dummyCategories[index].name),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue, // Background color
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                    ),
                    child: dummyCategories[index].icon,
                  ),
                  const SizedBox(height: 4), // Space between icon and text
                  Text(
                    dummyCategories[index].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }
        });
    return content;
  }
}
