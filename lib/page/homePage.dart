import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intern/model/product_model.dart';
import 'package:intern/widgets/HomeAppBar.dart';
import 'package:intern/widgets/itermsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> data = [
    ProductModel(image: "images/1.png", name: "Product1", prize: 1000),
    ProductModel(image: "images/2.png", name: "Product2", prize: 2000),
    ProductModel(image: "images/3.png", name: "Product3", prize: 3000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 1.5 / 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemCount: data.length,
          itemBuilder: (_, index) {
            return buildCard(
              image: data[index].image,
              name: data[index].name,
              prize: data[index].prize,
            );
          },
        ),
      ),
    );
  }

  Container buildCard(
      {required String image, required String name, required int prize}) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Image.asset(image),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.save_alt_outlined,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              '${prize} k',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
