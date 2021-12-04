import 'dart:ffi';

import 'package:ejm/share/share.dart';
import 'package:ejm/views/home/home.dart';
import 'package:ejm/views/user_behavior/forget_pass.dart';
import 'package:ejm/views/user_behavior/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: GreenColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200))),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(250),
                      bottomRight: Radius.circular(250))),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset('images/logo_200x200.png'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
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
                          hintText: 'Mật khẩu',
                          hintStyle: TextStyle(color: GreenColor),
                          border: new OutlineInputBorder(
                              borderSide: BorderSide(color: GreenColor))),
                      style: TextStyle(color: GreenColor, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetPass(),
                                )),
                            child: Text(
                              'Quên mật khẩu',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15),
                            )),
                        Spacer(),
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                )),
                            child: Text(
                              'Đăng kí người dùng mới',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15),
                            )),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          )),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            color: GreenColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            'Đăng nhập',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
