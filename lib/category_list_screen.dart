import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:job_listing/category_card_widget.dart';

class CategoryListScreen extends StatefulWidget {
  @override
  _CategoryListScreenState createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Find Jobs",
              style: GoogleFonts.mPlusRounded1c(
                  fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  CategoryCard(
                      iconImage: "assets/icons/design.png",
                      categoryName: "Designer"),
                  CategoryCard(
                      iconImage: "assets/icons/html.png",
                      categoryName: "Developer"),
                  CategoryCard(
                      iconImage: "assets/icons/manager.png",
                      categoryName: "Manager"),
                  CategoryCard(
                      iconImage: "assets/icons/classroom.png",
                      categoryName: "Teacher"),
                  CategoryCard(
                      iconImage: "assets/icons/internship.png",
                      categoryName: "Internship"),
                  CategoryCard(
                      iconImage: "assets/icons/driver.png",
                      categoryName: "Driver"),
                  CategoryCard(
                      iconImage: "assets/icons/engineer.png",
                      categoryName: "Engineer"),
                  CategoryCard(
                      iconImage: "assets/icons/woman_pilot.png",
                      categoryName: "Pilot")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
