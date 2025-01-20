import 'package:flutter/material.dart';
import "package:senior_project/templates/custom_scaffold.dart";
import "../../templates/custom_bottom_navigation_bar.dart";
import "../../data/groups_data.dart";
import "./category.dart";
import "../../templates/custom_body_group.dart";

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final upperContent = Column(
      children: [
        // Total balance & total expenses
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                children: [
                  Text(
                    "Total balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "1000 SAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                height: 50,
                width: 1,
                color: Colors.white,
              ),
              const Column(
                children: [
                  Text(
                    "Total Expenses",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "1000 SAR",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Progress bar
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 255, 243),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: 0.3, // Adjust width based on percentage
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text("30%",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "30% of your expenses, looks good.",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );

    final lowerContent = GridView.builder(
        itemCount: groups.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Category(name: groups[index].name)));
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80, // Adjust size as needed
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  child: groups[index].icon,
                ),
                const SizedBox(height: 4), // Space between icon and text
                Text(
                  groups[index].name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16, // Font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        });
    return CustomScaffold(
      title: "Groups",
      content: CustomBodyGroup(
          upperContent: upperContent, lowerContent: lowerContent),
    );
  }
}
