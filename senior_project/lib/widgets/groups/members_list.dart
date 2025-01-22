import 'package:flutter/widgets.dart';
import "./participant_row.dart";
import "../dialog_utils.dart";

class MembersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        right: 8,
        left: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Group Leader"),
              Text("Spending"),
            ],
          ),
          ParticipantRow(),
          const Text("Members"),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    participantInfo(context);
                  },
                  child: ParticipantRow()),
            ),
          ),
        ],
      ),
    );
  }
}
