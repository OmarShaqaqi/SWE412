import 'package:flutter/material.dart';

Future<void> showLogoutDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        titlePadding: const EdgeInsets.all(16),
        title: const Text(
          "End Session",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Container(
          height: 80,
          child: const Column(children: [
            Text(
              "Are you sure you want to log out?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
        actions: <Widget>[
          Column(
            children: [
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog
                    print("Session ended");
                    // Add your logout logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 208, 158),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: const Text(
                    "Yes, End Session",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 48, 48),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog
                    print("Cancelled");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 223, 247, 226),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 48, 48),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

Future<String?> addParticipantDialog(BuildContext context) {

  return showDialog(context:context, builder: (BuildContext context) {

    final particiapntNameController = TextEditingController();

    return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            titlePadding: const EdgeInsets.all(16),
            title: const Text(
              "Add Participant",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Container(
              height: 180,
              child:  Column(children: [
                const Text(
                  "Participant:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: particiapntNameController,
                  decoration: const InputDecoration(
                        hintText: "enter participant name",
                        filled: true,
                        fillColor: Color.fromARGB(255, 223, 247, 226),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18.0),
                          ),
                        ),
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                
              ]),
            ),
            actions: <Widget>[
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle account deletion
                        if (particiapntNameController.text.isNotEmpty) {
                          print(particiapntNameController.text);
                          Navigator.of(context).pop(particiapntNameController.text); // Close dialog
                        }
                        else {
                          SnackBar snackBar = const SnackBar(
                            content: Text("Please enter a participant name"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        "Add",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 48, 48),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close dialog
                        print("canceld");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 223, 247, 226),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 48, 48),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
  });
  
}


Future<void> deleteDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            titlePadding: const EdgeInsets.all(16),
            title: const Text(
              "Delete Account",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Container(
              height: 180,
              child: const Column(children: [
                Text(
                  "Are you sure you want to delete your account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "By deleting your account, you agree that you understand the consequences of this "
                    "action and that you agree to permanently delete your account and all associated data. ")
              ]),
            ),
            actions: <Widget>[
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle account deletion
                        Navigator.of(context).pop(); // Close dialog
                        print("Account deleted");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        "Yes, Delete my Account",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 48, 48),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close dialog
                        print("canceld");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 223, 247, 226),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 48, 48),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }