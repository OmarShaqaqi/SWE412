import 'package:flutter/material.dart';
import "../../widgets/custom_bottom_navigation_bar.dart";
import "../../widgets/faq_list.dart";
import "../../widgets/contact_us.dart";

class ProfileHelpScreen extends StatefulWidget {
  @override
  State<ProfileHelpScreen> createState() => _ProfileHelpScreen();
}

class _ProfileHelpScreen extends State<ProfileHelpScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Two tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 0, 208, 158), // Dark green background
      appBar: AppBar(
        title: const Text(
          "FAQs",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
        elevation: 0,
      ),
      extendBody: true,
      body: Container(
        height: screenHeight,
        margin: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 241, 255, 243), // Light green
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            const Text(
              "How can we help you?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 247, 226),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 208, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color.fromARGB(255, 9, 48, 48),
                tabs: const [
                  Tab(
                    child: SizedBox(
                      height: 20,
                      width: 150,
                      child: Center(child: Text("FAQ")),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      height: 20,
                      width: 150,
                      child: Center(child: Text("Contact Us")),
                    ),
                  ),
                ],
                indicatorColor: const Color.fromARGB(255, 0, 208, 158),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FaqList(),
                  ContactUs(),
                ],
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
