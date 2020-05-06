import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileWidget extends StatefulWidget {
  final String profileImage;
  final String profileName;
  final String jobTitle;
  final String country;
  final int yearsOfExperience;

  const UserProfileWidget(
      {Key key,
      @required this.profileImage,
      @required this.profileName,
      @required this.jobTitle,
      @required this.country,
      @required this.yearsOfExperience})
      : super(key: key);

  @override
  _UserProfileWidgetState createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  @override
  Widget build(BuildContext context) {
    String profileImage = widget.profileImage;
    String profileName = widget.profileName;
    String jobTitle = widget.jobTitle;
    String country = widget.country;
    int yearsOfExperience = widget.yearsOfExperience;

    return Card(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      elevation: 5.0,
      child: Container(
        width: 335.0,
        height: 119.0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 13.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(profileImage),
                radius: 40.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    profileName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.mPlusRounded1c(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    jobTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.mPlusRounded1c(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Text(
                    country,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.mPlusRounded1c(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Text(
                    "$yearsOfExperience years Experience",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.mPlusRounded1c(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
