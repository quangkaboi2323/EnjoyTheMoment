import 'package:ejm/share/bottom_share.dart';
import 'package:ejm/share/bottom_status.dart';
import 'package:ejm/share/share.dart';
import 'package:ejm/views/home/popular.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GreenColor,
        leading: Icon(
          Icons.arrow_back, color: GreenColor,
        ),
        title: Center(
          child: Text(
            'Yêu thích',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,fontStyle: FontStyle.italic
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.arrow_back, color: GreenColor, size: 50,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: PopularTour(),
          );
        },),
      ),
      bottomNavigationBar: Bottom(BottomState.favorite, context),
    );
  }
}
