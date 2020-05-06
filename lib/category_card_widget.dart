import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_listing/category_clients_screen.dart';

class CategoryCard extends StatefulWidget {
  final String iconImage;
  final String categoryName;

  const CategoryCard({
    Key key,
    @required this.iconImage,
    @required this.categoryName,
  }) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    var iconImage = widget.iconImage;
    var categoryName = widget.categoryName;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CategoryClientsScreen(categoryName: categoryName)));
      },
      child: Card(
        elevation: 5.0,
        child: Container(
          width: 156.0,
          height: 156.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage(iconImage),
                height: 100.0,
                width: 100.0,
              ),
              Text(
                categoryName,
                style: GoogleFonts.mPlusRounded1c(
                    fontSize: 14.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
