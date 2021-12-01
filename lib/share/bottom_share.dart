import 'package:ejm/share/bottom_status.dart';
import 'package:ejm/share/share.dart';
import 'package:flutter/material.dart';

Bottom(BottomState value) {
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 35,
              color: value == BottomState.favorite ? GreenColor : Colors.black54,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 35,
              color: value == BottomState.search ? GreenColor : Colors.black54,
            ),
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
