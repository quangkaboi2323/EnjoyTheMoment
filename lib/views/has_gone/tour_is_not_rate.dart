import 'package:ejm/share/share.dart';
import 'package:ejm/views/detail_tour/detail.tour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TourIsNotRate extends StatefulWidget {
  const TourIsNotRate({Key? key}) : super(key: key);

  @override
  _TourIsNotRateState createState() => _TourIsNotRateState();
}

class _TourIsNotRateState extends State<TourIsNotRate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Tour(),
    );
  }
}

class Tour extends StatefulWidget {
  const Tour({Key? key}) : super(key: key);

  @override
  _TourState createState() => _TourState();
}

class _TourState extends State<Tour> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Color.fromRGBO(38, 38, 38, 0.05),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: MaterialButton(
            padding: EdgeInsets.all(0),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailTour(),
                )),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
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
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color.fromRGBO(38, 38, 38, 0.05),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Row(
            children: [
              Spacer(),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              TextButton(
                  onPressed: () => {},
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 20, color: GreenColor),
                  )),
              Spacer(),
            ],
          ),
        )
      ],
    );
  }
}
