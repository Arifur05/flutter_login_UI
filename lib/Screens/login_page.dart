import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login_page/Screens/signup_page.dart';
import 'package:flutter_login_page/Widgets/BezierContainer.dart';

class LoginPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => HomePage();
}

class HomePage extends State<LoginPage> {
  static const String text = 'Login';
  static const String text2 = 'please Login To Continue';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: -height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()),
              Container(
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(height: height * .25),
                    Container(
                      margin: const EdgeInsets.only(left: 24.0),
                      child: const Text(text,
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 24.0),
                      child: const Text(text2,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black45,
                          )),
                    ),
                    _emailPasswordWidget(),
                    _loginButton(),
                    SizedBox(height: height * .255),
                    _createAccountLabel()
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputTextField(String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24.0, 14.0, 24.0, 0),
      child: Material(
        elevation: 18.0,
        child: TextFormField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            labelStyle: const TextStyle(
              color: Colors.orange,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orangeAccent,
                width: 2.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orangeAccent,
                width: 2.0,
              ),
            ),
            labelText: title,
            alignLabelWithHint: false,
            prefixIcon: Icon(
              icon,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _inputTextField('Email', Icons.email_outlined),
        _inputTextField('Password', Icons.lock_outline_rounded),
      ],
    );
  }

  Widget _loginButton() {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(right: 24.0, top: 24.0),
      child: Material(
          //elevation: 12.0,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                elevation: 12.0,
                primary: Colors.orangeAccent,
                fixedSize: Size(150.0, 50.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {},
              icon: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              label: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 20.0,
              ))),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: (){
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpPage()));

      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
