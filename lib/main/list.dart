import 'package:flutter/material.dart';
import 'package:flutter_demo/res/ListData.dart';

class GridContent extends StatelessWidget {
  List<Widget> _getListData() {
    var list = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 10,
            ),
            Text(
              value['title'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(value['author']),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 1)),
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisSpacing: 10.0,
      //水平间距
      mainAxisSpacing: 10.0,
      //垂直间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,

      //宽度和高度的比例
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
