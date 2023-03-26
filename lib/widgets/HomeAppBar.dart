import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Color(0XFF4C53A5),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "DP SHOP",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        )
      ]),
    );
  }
}