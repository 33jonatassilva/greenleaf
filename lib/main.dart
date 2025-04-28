import 'package:flutter/material.dart';
import 'views/login/login_page.dart';

void main() {
  runApp(const GreenLeafApp());
}

class GreenLeafApp extends StatelessWidget {
  const GreenLeafApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenLeaf',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}
