import 'package:ejm/share/share.dart';
import 'package:ejm/views/checkout/checkout.dart';
import 'package:ejm/views/home/places.dart';
import 'package:flutter/material.dart';

class DetailTour extends StatefulWidget {
  const DetailTour({Key? key}) : super(key: key);

  @override
  _DetailTourState createState() => _DetailTourState();
}

class _DetailTourState extends State<DetailTour> {
  bool _favorite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              child: Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd8nqr6w_qWXwZz5tQlz4Wf2qyYdBYRLHXYQ&usqp=CAU',
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              )),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _favorite = !_favorite;
                                });
                              } ,
                              icon: Icon(
                                Icons.favorite,
                                color: _favorite ? Colors.red : Colors.white,
                                size: 35,
                              )),
                          SizedBox(width: 10,)
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 7),
                        child: Text(
                          'Nha Trang',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 7),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Khanh Hoa, Viet Nam',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white54,
                            ),
                            Text(
                              '4.0',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: BlackText.withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset:
                                  Offset(0, -6), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(38, 38, 38, 0.05),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16,
                                          bottom: 16,
                                          left: 23,
                                          right: 23),
                                      child: Text(
                                        '\$',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: BlueColor),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '100.00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueAccent),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(38, 38, 38, 0.05),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Icon(
                                        Icons.directions_car,
                                        color: BlueColor,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Plane',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: BlueColor),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(38, 38, 38, 0.05),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Icon(
                                        Icons.hotel,
                                        color: BlueColor,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: BlueColor),
                                      ),
                                      Icon(Icons.star,
                                          size: 17, color: BlueColor)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //discription
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 68, right: 68),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: GreenColor,
                  ),
                  child: Text(
                    'Mô tả',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Spacer(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: Text(
                'This is discription This is discription This is discription '
                'This is discription This is discription This is discription '
                'This is discription This is discription This is discription T'
                'his is discription This is discription This is discription Th'
                'is is discription This is discription This is discription This '
                'is discription This is discription This is discription This is ',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Places(),
            ),
            //button to check out
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Checkout(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                          color: BlueColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          'Đặt',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    )),

                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
