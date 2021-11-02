
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double fontsize;
  const CustomTitle({
    this.fontsize,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
                    color: Colors.orange[400],
                     fontSize: fontsize,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               );
             }
           }
           

