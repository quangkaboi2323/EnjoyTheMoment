import 'package:ejm/share/share.dart';
import 'package:ejm/views/home/places.dart';
import 'package:ejm/views/home/popular.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(4),
          child: IconButton(
            icon: Icon(Icons.menu),
            color: GreenColor,
            onPressed: () => {},
          ),
        ),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EnjoyTheMoment',
              style: TextStyle(color: BlackText, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          )
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find the best tour',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: BlackText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Places',
                      style: TextStyle(
                          color: BlackText,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      child: Text(
                        'View all',
                        style: TextStyle(
                            color: GreenColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Places(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular tours',
                      style: TextStyle(
                          color: BlackText,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      child: Text(
                        'View all',
                        style: TextStyle(
                            color: GreenColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              PopularTour(),
              PopularTour(),
              PopularTour(),
              PopularTour(),
              PopularTour(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: BlackText.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 5,
              offset:
              Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding:
          const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 35,
                  color: GreenColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black45,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
