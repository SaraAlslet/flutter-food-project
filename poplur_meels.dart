import 'package:flutter/material.dart';
import 'package:food/models/data.dart';

import 'package:food/models/meal.dart';
import 'package:food/widget/title.dart';

class PoplurMeals extends StatelessWidget {
  final Meal meal;
  const PoplurMeals({
    Key key,
    this.meal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 200,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        //
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            // color: Colors.orange,
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                                image: AssetImage(meals[index].imageUrl),
                                fit: BoxFit.cover),
                          ),
                        ),
                        //
                        SizedBox(
                          height: 3,
                        ),
                        //
                        CustomTitle(
                          title: meals[index].title,
                          fontsize: 20, 
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            // SizedBox(width: 3,),
                            CustomTitle(
                              title: '${meals[index].price}\$',
                              fontsize: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
