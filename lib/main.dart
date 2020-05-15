import 'package:flutter/material.dart';
import 'address.dart';
import 'about.dart';
import 'location.dart';
import 'cart.dart';
import 'login.dart';
import 'index.dart';
import 'orders.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/':(context)=>Index(),
        '/location':(context)=>Location(),
        '/login':(context)=>Login(),
        '/address':(context)=>Address(),
        '/orders':(context)=>Orders(),
        '/cart':(context)=>Cart(),
        '/about':(context)=>About(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness:Brightness.dark,
      ),
    );
  }
}

