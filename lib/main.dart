import 'package:flutter/material.dart';
import 'package:flutter_app/FlutterApp.dart';
import 'package:flutter_app/widgets/FlutterPopupMenuButton.dart';
import 'package:flutter_app/router/FlutterRouterNewScreen.dart';
import 'package:flutter_app/router/FlutterHero.dart';
import 'package:flutter_app/widgets/FlutterBottomNavigationBar.dart';
import 'package:flutter_app/widgets/FlutterTabBar.dart';
import 'package:flutter_app/widgets/FlutterStack.dart';
import 'package:flutter_app/router/NamedRouter.dart';

void main() => runApp(MyApp());
List<String> urls = [
  'http://img1.doubanio.com/view/photo/s_ratio_poster/public/p480747492.webp',
  'http://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910813120.webp',
  'http://img1.doubanio.com/view/photo/s_ratio_poster/public/p511118051.webp',
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      home: FlutterStack(urls: urls, w: 140.0,),
      home: FlutterBottomNavigationBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ' Hello  You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
