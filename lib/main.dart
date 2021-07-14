import 'package:flutter/material.dart';
import 'package:flutter_login_page/Screens/signup_page.dart';

import 'Screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        home: LoginPage(),
      );
}
