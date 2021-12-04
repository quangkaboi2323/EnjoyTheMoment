import 'package:ejm/share/share.dart';
import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GreenColorAccent,
        elevation: 0.0,
        leading: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Text('Đổi mật khẩu'),
            Spacer(),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_right,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: GreenColorAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: GreenColor.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.person,
                      size: 150,
                      color: Colors.white,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Mật khẩu cũ',
                      hintStyle: TextStyle(color: GreenColor),
                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: GreenColor))),
                  style: TextStyle(color: GreenColor, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Mật khẩu mới',
                      hintStyle: TextStyle(color: GreenColor),
                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: GreenColor))),
                  style: TextStyle(color: GreenColor, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Nhập lại mật khẩu mới',
                      hintStyle: TextStyle(color: GreenColor),
                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: GreenColor))),
                  style: TextStyle(color: GreenColor, fontSize: 20),
                ),
              ),
              TextButton(
                  onPressed: null,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        color: GreenColor,
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        'Thay đổi mật khẩu',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
