import 'package:flutter/material.dart';
import "./dialog_utils.dart";

class ParticipantsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParticipantsListState();
}

class _ParticipantsListState extends State<ParticipantsList> {
  List<String> participants = ["Group Leader", "Participant 1"];

  void addParticipant() {
    setState(() {
      participants.add("Participant ${participants.length + 1}");
    });
  }

  void removeParticipant(int index) {
    setState(() {
      participants.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 191, 225, 195),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 247, 226),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () async {
                  final participant = await addParticipantDialog(context);
                  if (participant != null) {
                    setState(() {
                      participants.add(participant);
                    });
                  }
                },
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Participants",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.add),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: participants.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.person, color: Colors.blue),
                  title: Text(participants[index] ?? ""),
                  trailing: IconButton(
                    icon: Icon(Icons.remove, color: Colors.red),
                    onPressed: () => removeParticipant(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
