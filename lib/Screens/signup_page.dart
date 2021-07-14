

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page/Screens/login_page.dart';
import 'package:flutter_login_page/Widgets/BezierContainer.dart';

class SignUpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage>{
  static const String text = 'Create Account';
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
                child:SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: height * .015),
                        Container(
                          margin: const EdgeInsets.only(left: 24.0),
                          child: IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_rounded),
                            iconSize: 35,
                          ),
                        ),
                        SizedBox(height: height * .20),
                        Container(
                          margin: const EdgeInsets.only(left: 24.0),
                          child:  Text(text,
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),

                        _emailPasswordWidget(),
                        _signUpButton(),
                        SizedBox(height: height * .070),
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
        _inputTextField('Name', Icons.person_outline_rounded),
        _inputTextField('Email', Icons.email_outlined),
        _inputTextField('Password', Icons.lock_outline_rounded),
        _inputTextField('Confirm Password', Icons.lock_outline_rounded),
      ],
    );
  }

  Widget _signUpButton() {
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
                "Sign UP",
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
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Login',
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