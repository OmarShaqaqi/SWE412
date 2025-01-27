import 'package:flutter/material.dart';
import 'package:senior_project/templates/custom_body_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String selectedCategory = "All"; // Default category
  DateTime selectedDate = DateTime.now(); // Default date
  String reportType = "Expense"; // Default report type
  List<Map<String, dynamic>> results = []; // Filtered search results
  final List<Map<String, dynamic>> mockData = [
    {
      "category": "Food",
      "date": "2023-04-30",
      "title": "Dinner",
      "amount": -26.00
    },
    {
      "category": "Travel",
      "date": "2023-04-29",
      "title": "Bus Ticket",
      "amount": -10.00
    },
    {
      "category": "Salary",
      "date": "2023-04-28",
      "title": "Monthly Salary",
      "amount": 2000.00
    },
  ];

  // Open date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Filter search results
  void _performSearch() {
    setState(() {
      results = mockData.where((item) {
        final categoryMatch =
            selectedCategory == "All" || item["category"] == selectedCategory;
        final dateMatch =
            item["date"] == selectedDate.toIso8601String().split("T")[0];
        final typeMatch =
            reportType == "Income" ? item["amount"] > 0 : item["amount"] < 0;

        return categoryMatch && dateMatch && typeMatch;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // // Search Bar
        // TextField(
        //   decoration: InputDecoration(
        //     prefixIcon: const Icon(Icons.search),
        //     hintText: "Search...",
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(12),
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 16),

        // Category Dropdown
        DropdownButtonFormField<String>(
          value: selectedCategory,
          items: ["All", "Food", "Travel", "Salary"]
              .map((category) => DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedCategory = value!;
            });
          },
          decoration: const InputDecoration(
            labelText: "Groups",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),

        // Date Selector
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date: ${selectedDate.toLocal()}".split(" ")[0],
              style: const TextStyle(fontSize: 16),
            ),
            IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: () => _selectDate(context),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Income/Expense Toggle
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RadioListTile<String>(
                value: "Income",
                groupValue: reportType,
                onChanged: (value) {
                  setState(() {
                    reportType = value!;
                  });
                },
                title: const Text("Income"),
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                value: "Expense",
                groupValue: reportType,
                onChanged: (value) {
                  setState(() {
                    reportType = value!;
                  });
                },
                title: const Text("Expense"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Search Button
        Center(
          child: ElevatedButton(
            onPressed: _performSearch,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00D09E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text("Search"),
          ),
        ),
        const SizedBox(height: 16),

        // Search Results
        Expanded(
          child: results.isEmpty
              ? const Center(child: Text("No results found."))
              : ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    final item = results[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Icon(
                          item["amount"] > 0
                              ? Icons.arrow_upward
                              : Icons.arrow_downward,
                          color: Colors.white,
                        ),
                        backgroundColor:
                            item["amount"] > 0 ? Colors.green : Colors.red,
                      ),
                      title: Text(item["title"]),
                      subtitle: Text("${item["date"]} - ${item["category"]}"),
                      trailing: Text(
                        "${item["amount"] > 0 ? "+" : ""}\$${item["amount"].toStringAsFixed(2)}",
                        style: TextStyle(
                          color: item["amount"] > 0 ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Return to the previous page
          },
        ),
        title: const Text("Search"),
        backgroundColor: const Color(0xFF00D09E), // Match app's color scheme
        centerTitle: true,
      ),
      body: CustomBodySearch(content: content), // Use CustomBodySearch here
    );
  }
}
