import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';


void main() => runApp(Splash());

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }

}

class SplashPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () => toMain());
    super.initState();
  }

  void toMain() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        child: Image.asset('images/launch_image.jpg',
          fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity
        ),
      );
    });
  }
}
