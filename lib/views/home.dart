import 'package:ejm/share/share.dart';
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
      body: Container(
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
                    'Country',
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

          ],
        ),
      ),
    );
  }
}
