import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Import bar chart library
import 'package:senior_project/screens/analyst/search_page.dart';
import 'package:senior_project/templates/custom_appbar.dart';
import 'package:senior_project/templates/custom_bottom_navigation_bar.dart';
import 'package:senior_project/templates/custom_body_analysis.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  int selectedTab = 0; // Track active tab (0: Daily, 1: Weekly, etc.)
  List<double> expenses = [50, 100, 75, 30, 90, 120, 60]; // Example expenses

  @override
  Widget build(BuildContext context) {
    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tab Selector
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: ['Daily', 'Weekly', 'Monthly', 'Yearly']
              .asMap()
              .entries
              .map((entry) {
            int index = entry.key;
            String label = entry.value;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = index;
                  _updateExpenses(); // Update expenses based on the selected tab
                });
              },
              child: Chip(
                label: Text(label),
                backgroundColor: selectedTab == index
                    ? const Color(0xff00d09e)
                    : const Color(0xffdff7e2),
                labelStyle: TextStyle(
                  color: selectedTab == index ? Colors.white : Colors.black,
                ),
              ),
            );
          }).toList(),
        ),

        const SizedBox(height: 16),

        // Graph Section
        Column(
          children: [
            // Graph Header with Search and Schedule Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Income & Expenses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff093030),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchPage(),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () {
                        // Navigate to Calendar Page
                      },
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Bar Graph
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  barGroups: _buildBarGroups(),
                  borderData: FlBorderData(show: false),
                  titlesData: FlTitlesData(show: true),
                ),
              ),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      appBar: const CustomAppbar(title: "Analysis"),
      body: CustomBodyAnalysis(content: content), // Use CustomBodyAnalysis here
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  // Helper method to build bar groups for the graph
  List<BarChartGroupData> _buildBarGroups() {
    return expenses
        .asMap()
        .entries
        .map(
          (entry) => BarChartGroupData(
            x: entry.key,
            barRods: [
              BarChartRodData(
                toY: entry.value,
                color: const Color(0xff00d09e),
                width: 16,
              )
            ],
          ),
        )
        .toList();
  }

  // Update expenses dynamically based on the selected tab
  void _updateExpenses() {
    // Logic to update `expenses` based on `selectedTab`
    if (selectedTab == 0) {
      expenses = [50, 100, 75, 30, 90, 120, 60]; // Daily
    } else if (selectedTab == 1) {
      expenses = [400, 500, 450, 300]; // Weekly
    } else if (selectedTab == 2) {
      expenses = [1500, 2000, 1700, 1800, 1900]; // Monthly
    } else if (selectedTab == 3) {
      expenses = [20000, 25000, 22000]; // Yearly
    }
  }
}
