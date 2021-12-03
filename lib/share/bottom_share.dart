import 'package:ejm/share/bottom_status.dart';
import 'package:ejm/share/share.dart';
import 'package:ejm/views/favorite/favorite.dart';
import 'package:ejm/views/home/home.dart';
import 'package:ejm/views/search/search.dart';
import 'package:flutter/material.dart';

Bottom(BottomState value, context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: BlackText.withOpacity(0.1),
          spreadRadius: 0,
          blurRadius: 5,
          offset: Offset(0, -4), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              size: 35,
              color: value == BottomState.home ? GreenColor : Colors.black54,
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 35,
              color:
                  value == BottomState.favorite ? GreenColor : Colors.black54,
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Favorite(),
                )),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 35,
              color: value == BottomState.search ? GreenColor : Colors.black54,
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                )),
          ),
        ],
      ),
    ),
  );
}
