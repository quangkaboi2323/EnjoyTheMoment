import 'package:ejm/share/share.dart';
import 'package:ejm/views/user_behavior/login.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  bool _VerifyCode = false;
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
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Nhập vào địa chỉ Email để nhận được mã xác nhận của hệ thống sau đó xác nhận mã xác nhận để nhận được email mới',
                        style: TextStyle(
                            color: Colors.black45,
                            fontStyle: FontStyle.italic,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontStyle: FontStyle.italic,
                                fontSize: 18),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 8),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '',
                            hintStyle: TextStyle(color: GreenColor),
                            border: new OutlineInputBorder(
                                borderSide: BorderSide(color: GreenColor))),
                        style: TextStyle(color: GreenColor, fontSize: 20),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _VerifyCode = true;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: GreenColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'Nhận mã xác nhận',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )),
                    Spacer(),
                    TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          )),
                      child: Text(
                        'Quay lại trang đăng nhâp',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontStyle: FontStyle.italic,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
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
