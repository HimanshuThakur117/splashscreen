import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/Homescreen.dart';

class splashscree extends StatefulWidget {
  const splashscree({Key? key}) : super(key: key);

  @override
  _splashscreeState createState() => _splashscreeState();
}

class _splashscreeState extends State<splashscree> {

  @override
  void initState() {
    super.initState();
    this.gotonextpage();
    this.hidestatusbar();
  }

  gotonextpage() async{
    await Future.delayed(Duration(milliseconds: 20000),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> MyHomePage(title: 'home')));
  }

  void hidestatusbar() {
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('images/train.png'),

            SizedBox(height: 40,),

            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),

            ),
          ],
        ),
      ),
    );
  }
}
