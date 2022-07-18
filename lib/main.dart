import 'package:flutter/material.dart';
import 'Pages/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffee App Ui Practice",
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange
      ),
      
    );
  }
}