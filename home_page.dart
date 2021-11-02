import 'package:flutter/material.dart';
import 'package:food/pages/details.dart';
import 'package:food/widget/categories.dart';
import 'package:food/widget/offers.dart';
import 'package:food/widget/poplur_meels.dart';
import 'package:food/widget/search.dart';
import 'package:food/widget/title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CustomTitle(title: 'vanela sweets', fontsize: 40,),
            CustomTitle(title: 'Sweets', fontsize: 20,),
            SearchWidget(),
            CategoriesBar(),
            PoplurMeals(),
            MealsOffers(),
            Details(),
          ],
        ),
      ),
    );
  }
}





