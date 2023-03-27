import 'package:flutter/material.dart';

class ItermsWidget extends StatelessWidget {
  const ItermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(childAspectRatio: 0.68,crossAxisCount: 2,
    shrinkWrap: true,
    children: [
      Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(color: Colors.amber),
      )
    ],
    );
  }
}