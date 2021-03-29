

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_sampleproj/global/constants.dart';
import 'package:school_sampleproj/widget/circle_avatar/circle_avatar_widget.dart';

class TeacherCard extends StatelessWidget {
  String imageurl;
  String subject;
  String name;



  TeacherCard({this.imageurl=demo_image_url, this.subject="", this.name=""});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(top: 10,bottom: 10,left: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvtarWidget(iconsize: 20,radius: 20,),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text(subject,style: GoogleFonts.montserrat(fontSize: 12)),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

