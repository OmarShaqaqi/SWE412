import 'package:flutter/material.dart';
import "../../widgets/custom_bottom_navigation_bar.dart";
import "../../data/groups_data.dart";

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 0, 208, 158), // Dark green background
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(
          title: const Text(
            "Settings",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 208, 158),
          elevation: 0,
        ),
      ),
      extendBody: true,
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 0, 208, 158),
            child: Column(
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
            ),
          ),
          // Group cards
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 255, 243), // Light green
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: GridView.builder(
                  itemCount: groups.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 80, // Adjust size as needed
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue, // Background color
                            borderRadius:
                                BorderRadius.circular(20), // Rounded corners
                          ),
                          child: groups[index].icon,
                        ),
                        const SizedBox(height: 8), // Space between icon and text
                        Text(
                          groups[index].name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16, // Font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),

      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
