import 'package:flutter/material.dart';
import 'package:flutter_gh_pages/demonstracao/demonstracao_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter gh-pages',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemonstracaoPage(),
    );
  }
}
