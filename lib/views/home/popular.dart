import 'package:ejm/share/share.dart';
import 'package:ejm/views/detail_tour/detail.dart';
import 'package:flutter/material.dart';

class PopularTour extends StatefulWidget {
  const PopularTour({Key? key}) : super(key: key);

  @override
  _PopularTourState createState() => _PopularTourState();
}

class _PopularTourState extends State<PopularTour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(38, 38, 38, 0.05),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailTour(),)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd8nqr6w_qWXwZz5tQlz4Wf2qyYdBYRLHXYQ&usqp=CAU',
                height: 100,
                width: 110,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nha Trang',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: BlackText),
                  ),
                  Spacer(),
                  Text(
                    '3 nights for two/all inclusive',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: BlackText),
                  ),
                  Spacer(),
                  Text(
                    '\$ 100.00',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: BlackText),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4.3',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 23),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 23,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
