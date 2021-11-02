import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesBar extends StatelessWidget {
  List icons = [
    Icons.food_bank,
    Icons.food_bank_sharp,
    Icons.emoji_food_beverage_outlined,
    Icons.food_bank_sharp,
    Icons.food_bank,
    Icons.android
  ];
  List titles = ['Pizza', 'Pasta', 'Egyption', 'Burger', 'Meet', 'chicken'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: icons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(icons[index],color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(titles[index]),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
