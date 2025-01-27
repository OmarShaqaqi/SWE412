import 'package:flutter/material.dart';
import "package:senior_project/templates/custom_scaffold.dart";
import "../../data/groups_data.dart";
import "group_item.dart";
import "../../templates/custom_body_group.dart";
import "add_group.dart";

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final content = GridView.builder(
        itemCount: groups.length + 1, //for the static part (add group)
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          if (index == groups.length) {
            return GestureDetector(
              onTap: () {
                // Handle the action for adding a new categor
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddGroup(),
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
                    builder: (context) =>
                        GroupItemScreen(name: groups[index].name),
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
                    child: groups[index].icon,
                  ),
                  const SizedBox(height: 4), // Space between icon and text
                  Text(
                    groups[index].name,
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
    return CustomScaffold(
      title: "Groups",
      content: CustomBodyGroup(content: content),
    );
  }
}
