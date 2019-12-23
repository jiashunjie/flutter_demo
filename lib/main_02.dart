import 'package:flutter/material.dart';
import 'package:flutter_demo/res/ListData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
          brightness: Brightness.dark,
        ),
        body: GridContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class GridContent extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisSpacing: 20.0,//水平间距
      mainAxisSpacing: 20.0,//垂直间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: 0.7,//宽度和高度的比例
      children: this._getListData(),
    );
  }
}

class ListContent extends StatelessWidget {
  List list = new List();

  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
      title: Text(listData[index]["title"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListData);
  }
}
