import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.orange,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'search',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.orange,
              ),
              //prefixIcon: Icon(Icons.search,color: Colors.tealAccent,),
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
