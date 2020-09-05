import 'package:flutter/material.dart';

class LabelsWidget extends StatelessWidget {
  final String ruta;
  final String label1;
  final String label2;

  const LabelsWidget(
      {Key key, this.ruta, @required this.label1, @required this.label2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            label1,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
            child: Text(
              label2,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
