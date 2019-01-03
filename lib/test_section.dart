import 'package:flutter/material.dart';

class TestSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text("Arrival", style: TextStyle(color: Colors.white, fontSize: 24.0),),
          onPressed: () {},
          color: Colors.blue,
        ),
        FlatButton(
          child: Text("Departure", style: TextStyle(color: Colors.white, fontSize: 24.0)),
          color: Colors.lightBlue,
          onPressed: () {},
        )

      ],
    );
  }
}


