import 'package:flutter/material.dart';
import 'package:food/models/data.dart';
import 'package:food/widget/title.dart';

class MealsOffers extends StatelessWidget {
  const MealsOffers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            image: AssetImage(meals[index].imageUrl),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTitle()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
       
        },
         
          separatorBuilder: (context, index) {
            return Divider(thickness: 2, color: Colors.orange);
         }
      ),
    );
  }
}
