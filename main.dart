import 'package:flutter/material.dart';
import 'package:food/pages/home_page.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primaryColor: Colors.deepOrange,
      ),
      home:HomePage(), 
    );
  }
}

         

