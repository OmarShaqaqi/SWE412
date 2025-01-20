import 'package:flutter/material.dart';
import "package:senior_project/templates/custom_body.dart";
import "package:senior_project/templates/custom_scaffold.dart";
import "../../templates/custom_bottom_navigation_bar.dart";
import "../../widgets/participants_list.dart";

class AddGroup extends StatefulWidget {
  const AddGroup({super.key});
  @override
  State<StatefulWidget> createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  @override
  Widget build(BuildContext context) {
    final participants = <String>[];
    final content = Column(
      children: [
        Form(
          child: Column(
            children: [
              const Text("Group name"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "new Group",
                  filled: true,
                  fillColor: Color.fromARGB(255, 223, 247, 226),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Budget"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "\$8000",
                  filled: true,
                  fillColor: Color.fromARGB(255, 223, 247, 226),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Description"),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Details",
                  filled: true,
                  fillColor: Color.fromARGB(255, 223, 247, 226),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Participants"),
              ParticipantsList(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Add Group"),
              ),
            ],
          ),
        )
      ],
    );

    return CustomScaffold(
      title: "Groups",
      content: CustomBody(content: content),
    );
  }
}
