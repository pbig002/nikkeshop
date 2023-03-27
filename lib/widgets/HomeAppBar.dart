import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});
  
  get badges => null;

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
        ),
        Spacer(),
        // Badge(
        //   badgeContent: Text(
        //     "3",
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Icon(
        //       Icons.shopping_bag_outlined,
        //       size: 35,
        //       color: Colors.purpleAccent,
        //     ),
        //   ),
        // ),
  
      ]),
    );
  }
}
