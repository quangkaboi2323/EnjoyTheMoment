import 'package:ejm/share/share.dart';
import 'package:ejm/views/home/popular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _perNum = 1;
  int _total = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: GreenColor,

      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: GreenColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    // IconButton(
                    //     onPressed: () => Navigator.pop(context),
                    //     icon: Icon(
                    //       Icons.arrow_back,
                    //       color: Colors.white,
                    //     )),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'CHECKOUT',
                          style: TextStyle(
                              fontSize: 40,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, -6))
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PopularTour(),
                SizedBox(
                  height: 8,
                ),
                //Information of day
                Row(
                  children: [
                    Text(
                      'Start day: 15/11/2021',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    Spacer(),
                    Text(
                      'End day: 15/11/2021',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ],
                ),
                //card show total money to book
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'Book for',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: GreenColor.withOpacity(0.7)),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _perNum == 1 ? _perNum : _perNum--;
                            _total = 100 * _perNum;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 40,
                          padding: EdgeInsets.fromLTRB(17, 0, 20, 0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: GreenColor.withOpacity(0.7)),
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        _perNum.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _perNum == 9 ? _perNum : _perNum++;
                            _total = 100 * _perNum;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 40,
                          padding: EdgeInsets.fromLTRB(17, 0, 20, 0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: GreenColor.withOpacity(0.7)),
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        )),
                    Spacer(),
                    Text(
                      'person(s)',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: GreenColor.withOpacity(0.7)),
                    ),
                    Spacer(),
                  ],
                ),
                //Information of user to push -> create order
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.6)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: Text(
                        'Tour cost',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: BlackText),
                      ),
                    ),
                    Spacer()
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: BlackText.withOpacity(0.9)),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ticket price: ',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '\$ 100.00',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              _perNum.toString(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              ' person(s)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              'Total cost: ',
                              style: TextStyle(fontSize: 20, color: GreenColor),
                            ),
                            Text(
                              '\$ ' + _total.toString(),
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w800),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Spacer(),
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: GreenColor.withOpacity(0.9), width: 3),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Text(
                        'Information',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: GreenColor),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  color: GreenColor.withOpacity(0.6),
                  shadowColor: GreenColor,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Full name',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Personal ID',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Phone number',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text('Book now', style: TextStyle(fontSize: 20, color: Colors.white),)))
              ],
            ),
          )
        ],
      )),
    );
  }
}
