import 'package:flutter/material.dart';



class UserJulia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Julia",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17.0,
                color: Colors.black
            ),
          )),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    image: DecorationImage(image: AssetImage('assets/images/user1/julia.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text("Julia",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30.0,
                    color: Colors.black
                )),
              Text("Your interior designer with a passion",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17.0,
                    color: Colors.grey
              )),
              SizedBox(
                height: 50
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("353",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        )
                      ),
                      Text("photos",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.grey
                          )
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("148",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          )
                      ),
                      Text("videos",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.grey
                          )
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("71k",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          )
                      ),
                      Text("likes",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.grey
                          )
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                  height: 50
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Photos",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        )
                    ),
                    Text("View all",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            color: Colors.deepOrangeAccent
                        )
                      )
                  ]
              ),
            ],
          ),
        ],
      )
    );
  }
}
