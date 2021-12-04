import 'package:ejm/share/share.dart';
import 'package:ejm/views/user_behavior/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                        decoration: InputDecoration(
                            hintText: 'Tên người dùng',
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
                      padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Nhập lại mật khẩu',
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
                          Spacer(),
                          TextButton(
                              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),)),
                              child: Text(
                                ' Quay lại đăng nhập',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              color: GreenColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'Đăng ký',
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
      ),
    );
  }
}
