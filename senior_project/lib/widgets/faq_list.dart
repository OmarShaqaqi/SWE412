import 'package:flutter/material.dart';
import "../data/faq_data.dart";

class FaqList extends StatelessWidget{

  const FaqList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: ListView.builder(
                itemCount: faqData.length,
                itemBuilder: (context, index) {
                  final faq = faqData[index];
                  return ExpansionTile(
                    title: Text(
                      faq.question,
                      softWrap: true,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          faq.answer,
                          softWrap: true,
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
  }
}