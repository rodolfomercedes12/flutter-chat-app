import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String labelText;
  final Function onpressed;

  BotonAzul({Key key, @required this.labelText, @required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        elevation: 2,
        highlightElevation: 5,
        color: Colors.blue,
        shape: StadiumBorder(),
        child: Container(
          width: double.infinity,
          height: 55.0,
          child: Center(
            child: Text(
              labelText,
              style: TextStyle(color: Colors.white, fontSize: 17.0),
            ),
          ),
        ),
        onPressed: this.onpressed);
  }
}
