import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBar();
}

class _CustomBottomNavigationBar extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 223, 247, 226),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 223, 247, 226),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 0, 208, 158),
            items: const [
              BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.center,
                  child: ImageIcon(
                    AssetImage("assets/Home.png"),
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.center,
                  child: ImageIcon(
                    AssetImage("assets/Analysis.png"),
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.center,
                  child: ImageIcon(
                    AssetImage("assets/Transactions.png"),
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.center,
                  child: ImageIcon(
                    AssetImage("assets/Category.png"),
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.center,
                  child: ImageIcon(
                    AssetImage("assets/Profile.png"),
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
