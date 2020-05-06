import 'package:flutter/material.dart';
import 'package:job_listing/category_clients_screen.dart';
import 'package:job_listing/category_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Listing',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => CategoryListScreen(),
        "/category-clients": (context) => CategoryClientsScreen()
      },
    );
  }
}
