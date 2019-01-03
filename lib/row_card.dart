import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {

  double subColumnHeight;
  String imagePath;
  String avatarImage;
  String textContent;
  String userName;
  String timePosted;

  RowCard(double height, String imgPath, String avatarImg, String user, String time, String txt) {
    subColumnHeight = height;
    imagePath = imgPath;
    avatarImage = avatarImg;
    textContent = txt;
    userName = user;
    timePosted = time;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 350.0,
          width: (MediaQuery.of(context).size.width - 35.0) / 2,
          child: Column(
              children: [
                Container(
                    height: subColumnHeight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover
                        )
                    )
                ),
                SizedBox(height: 15.0),
                Text(textContent,
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat'
                  )
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(image: AssetImage(avatarImage))
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.orange),
                    ),
                        Text(
                          timePosted,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                  ],
                )
              ]
          )
        ]
      )
    );

  }
}

