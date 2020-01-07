import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return HomeContent();
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyList();
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: Text(
        '你好 Flutter \n 我想静静',
        textDirection: TextDirection.ltr,
        textScaleFactor: 1.8,
        style: TextStyle(
            fontSize: 18.0, color: Colors.blue, fontWeight: FontWeight.w200),
        textAlign: TextAlign.right,
        overflow: TextOverflow.ellipsis,
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
    ));
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      child: ClipOval(
//        child: Image.network(
//          "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2231427147,1514228057&fm=26&gp=0.jpg",
//          height: 200,
//          width: 200,
//          fit: BoxFit.cover,
//        ),
        child: Image.asset(
          "images/jing.jpg",
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
//      decoration: BoxDecoration(
//          color: Colors.yellow,
//          borderRadius: BorderRadius.circular(150),
//          image: DecorationImage(
//              image: NetworkImage(
//                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2231427147,1514228057&fm=26&gp=0.jpg",
//              ),
//              fit: BoxFit.cover)
//      ),
//          child: Image.network(
//            "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2231427147,1514228057&fm=26&gp=0.jpg",
//            alignment: Alignment.bottomRight,
////            fit: BoxFit.cover,
//            repeat: ImageRepeat.repeatY,
//          ),
    ));
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
//        MyText(),
//        MyImage()
        ListTile(
          leading: Image.network(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2231427147,1514228057&fm=26&gp=0.jpg"),
          title: Text('2019年12月22日 星期日'),
          subtitle: Text(
            '天气晴',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        ListTile(
            leading: Icon(Icons.satellite),
            title: Text('2019年12月22日 星期日'),
            subtitle: Text(
              '天气晴',
              style: TextStyle(fontSize: 18.0),
            )),
        ListTile(
          leading: Icon(
            Icons.save,
            size: 40.0,
          ),
          title: Text('2019年12月22日 星期日'),
          subtitle: Text(
            '天气晴',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.school,
            color: Colors.yellow,
          ),
          title: Text('2019年12月22日 星期日'),
          subtitle: Text(
            '天气晴',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        ListTile(
          title: Text('2019年12月22日 星期日'),
          subtitle: Text(
            '天气晴',
            style: TextStyle(fontSize: 18.0),
          ),
          trailing: Image.asset("images/jing.jpg"),
        ),
        Container(
          width: 400,
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Image.asset("images/jing.jpg"),
                    Text('2019年12月22日 星期日'),
                    Text(
                      '天气晴',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      '我想静静',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Text('2019年12月22日 星期日'),
                    Text(
                      '天气晴',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      '我想静静',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Image.asset(
                      "images/jing.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Text('2019年12月22日 星期日'),
                    Text(
                      '天气晴',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      '我想静静',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Image.asset("images/jing.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          height: 500,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Text('2019年12月22日 星期日'),
              Text(
                '天气晴',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                '我想静静',
                style: TextStyle(fontSize: 18.0),
              ),
              Image.asset("images/jing.jpg"),
            ],
          ),
        ),
      ],
    );
  }
}
