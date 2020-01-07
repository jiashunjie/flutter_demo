import 'package:flutter/material.dart';
import 'package:flutter_demo/personal.dart';

class MinePage extends StatelessWidget {
  MinePage({Key key, this.title}) : super(key: key);
  final String title;

  Widget _getHero(context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            color: Colors.pink,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Mine',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                  margin: EdgeInsets.all(15.0),
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Hero(
                        tag: 'imageHero',
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          margin: EdgeInsets.all(15.0),
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/jing.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersonalPage()),
                        );
                      },
                    ),
                    Text(
                      '我想静静',
                      style:
                          TextStyle(fontSize: 24.0, color: Colors.pinkAccent),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getHero(context),
    );
  }
}
