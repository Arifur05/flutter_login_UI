import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login_page/Widgets/BezierContainer.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        home: HomePage(),
      );
}

class HomePage extends StatelessWidget {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 24.0),
                      child: const Text(text,
                          style: TextStyle(
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 24.0),
                      child: const Text(text2,
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black45,
                          )),
                    ),
                    _emailPasswordWidget(),
                    _loginbutton(),
                    SizedBox(height: height * .055),
                    _createAccounrLabel()
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _inputtextfield(String title, IconData icon) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
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
          ),
        ],
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _inputtextfield('Email', Icons.email_outlined),
        _inputtextfield('Email', Icons.lock_outline_rounded),
      ],
    );
  }

  Widget _loginbutton() {
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
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              label: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 24.0,
              ))),
    );
  }

  Widget _createAccounrLabel() {
    return Ink(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
