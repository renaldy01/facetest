import 'package:flutter/material.dart';
import 'package:facetest/utils/custom_widget.dart';
import 'package:facetest/doa/detail_doa.dart';
import 'package:facetest/model/doa.dart';

class AllDoaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        title: Text(
          'A Collection of Doa',
          style:
              TextStyle(color: Colors.white, decoration: TextDecoration.none),
        ),
      ),
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.all(16.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: dataListDoa.map((list) {
            return Container(
              height: 50,
              margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 8.0),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white))),
              child: RaisedButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.white24,
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation, curve: Curves.elasticInOut);
                            return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.center,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return DetailDoa(title: list);
                          }));
                },
                child: ListTile(
                  title: Text(
                    list.title,
                    style: listTitle,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  RaisedButton(
      {required int elevation,
      required RoundedRectangleBorder shape,
      required Color color,
      required Null Function() onPressed,
      required ListTile child}) {}
}
