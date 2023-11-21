import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: BackgroundClip(),
          child: Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red,
                  // Colors.red[700]
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 90),
          child: Row(
            children: <Widget>[
              Container(
                child: Image(
                    image: AssetImage('assets/img/logo1.png'), width: 80.0),
                padding: EdgeInsets.only(
                    top: 16.0, bottom: 16.0, left: 20.0, right: 16.0),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text('Doa Application',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text(
                      'Surely, My lord hears all prayer',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BackgroundClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
