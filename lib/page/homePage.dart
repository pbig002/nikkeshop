import 'package:flutter/material.dart';
import 'package:intern/widgets/HomeAppBar.dart';
import 'package:intern/widgets/itermsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          itemCount: 100,
          itemBuilder: (_, index) {
            return buildCard();
          },
        ),
      ),
    );
  }

  Container buildCard() {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Image.asset("images/1.png"),
            ),
            Row(
              children: [
                Text(
                  "Nikke",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Icon(Icons.save_alt_outlined, size: 30,),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "10.000k",
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
