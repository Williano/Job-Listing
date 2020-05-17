import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_listing/user_profile_widget.dart';

class CategoryClientsScreen extends StatefulWidget {
  final String categoryName;

  const CategoryClientsScreen({Key key, @required this.categoryName})
      : super(key: key);
  @override
  _CategoryClientsScreenState createState() => _CategoryClientsScreenState();
}

class _CategoryClientsScreenState extends State<CategoryClientsScreen> {
  @override
  Widget build(BuildContext context) {
    var categoryName = widget.categoryName;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: GoogleFonts.mPlusRounded1c(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black12),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                print("Tapped working");
              },
              child: ImageIcon(
                AssetImage("assets/icons/filter.png"),
                color: Colors.orange[400],
                size: 30.0,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          UserProfileWidget(
            profileImage: "assets/images/will.JPG",
            profileName: "William Kwabla",
            jobTitle: "UX/UI Designer",
            country: "USA",
            yearsOfExperience: 4,
          ),
          UserProfileWidget(
            profileImage: "assets/images/female_user.png",
            profileName: "Julian Wan",
            jobTitle: "Product Designer",
            country: "USA",
            yearsOfExperience: 2,
          ),
          UserProfileWidget(
            profileImage: "assets/images/user_male.png",
            profileName: "Kas",
            jobTitle: "Frontend Designer",
            country: "UK",
            yearsOfExperience: 5,
          ),
          UserProfileWidget(
            profileImage: "assets/images/Oliver.jpeg",
            profileName: "Oliver Boamah",
            jobTitle: "Mobile Designer",
            country: "USA",
            yearsOfExperience: 4,
          ),
          UserProfileWidget(
            profileImage: "assets/images/son.png",
            profileName: "Kwabena Yeboah",
            jobTitle: "Web Designer",
            country: "Germany",
            yearsOfExperience: 4,
          ),
          UserProfileWidget(
            profileImage: "assets/icons/manager.png",
            profileName: "William Kwabla",
            jobTitle: "UX/UI Designer",
            country: "USA",
            yearsOfExperience: 4,
          ),
        ],
      ),
    );
  }
}
