import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    final title = 'Mine';
    return Scaffold(
//      appBar: AppBar(
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.pink[50],Colors.pink[100],Colors.pink[200],Colors.pink[300]],
//
//            )
//          ),
//        ) ,
//      ),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          // Provide a standard title.
          title: Text(title),
          // Allows the user to reveal the app bar if they begin scrolling
          // back up the list of items.
          floating: false,
          // Display a placeholder widget to visualize the shrinking size.
          backgroundColor: Colors.pink[100],
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: 'imageHero',
              child:
                  Image.asset("images/jing.jpg",fit: BoxFit.cover,),
            ),
          ),
          // Make the initial height of the SliverAppBar larger than normal.
          expandedHeight: 220.0,
          pinned: true,
        ),
        SliverList(
          // Use a delegate to build items as they're scrolled on screen.
          delegate: SliverChildBuilderDelegate(
            // The builder function returns a ListTile with a title that
            // displays the index of the current item.
            (context, index) => ListTile(title: Text('Item #$index')),
            // Builds 1000 ListTiles
            childCount: 1000,
          ),
        )
      ]),
    );
  }
}
