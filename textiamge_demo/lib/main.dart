import 'package:flutter/material.dart';
import 'package:textiamge_demo/rich_text_demo.dart';
import 'package:textiamge_demo/rich_text_link.dart';
import 'package:textiamge_demo/text_align.dart';
import 'package:textiamge_demo/text_decoration.dart';
import 'package:textiamge_demo/text_gradient.dart';
import 'package:textiamge_demo/text_hello.dart';
import 'package:textiamge_demo/text_overflow.dart';

import 'default_text_demo.dart';
import 'default_text_merge.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Text Demo"),
      ),
      body: richTextLinkDemo(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text 基本属性
            /* Text("Hello W100", style: TextStyle(fontWeight: FontWeight.w100)),
            Text("Hello W400", style: TextStyle(fontWeight: FontWeight.w400)),
            Text("Hello W700", style: TextStyle(fontWeight: FontWeight.w700)),
            Text("Hello W900", style: TextStyle(fontWeight: FontWeight.w900)),
            Text("这段文字为斜体", style: TextStyle(fontStyle: FontStyle.italic)),
            Text(
              "你好，自定义字体 Ag",
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.normal),
            ),
            Text(
              "Sample TextStyle",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 28,
              ),
            ),
            textDecorationDemo(),
            Text("夏天要这样写字隔开散热快 summer", style: TextStyle(letterSpacing: 4)),
            Text(
              "单词分开，主要靠空格 lorem ipsum",
              style: TextStyle(wordSpacing: 10),
            ),
            Text(
              "文字阴影效果",
              style: TextStyle(fontSize: 40, color: Colors.black, shadows: [
                BoxShadow(
                    offset: Offset(10, 10), color: Colors.grey, blurRadius: 8)
              ]),
            ),
            Text(
              "同时使用4个阴影",
              style: TextStyle(fontSize: 40, shadows: [
                BoxShadow(offset: Offset(-2, -2), color: Colors.grey),
                BoxShadow(offset: Offset(-2, 2), color: Colors.grey),
                BoxShadow(offset: Offset(2, -2), color: Colors.grey),
                BoxShadow(offset: Offset(2, 2), color: Colors.grey),
              ]),
            ),
            StackText(),
            textGradientDemo(),
            textAlignDemo(),
            Text(
              "￥5.00",
              semanticsLabel: "五元整",
            ),
            DefaultTextStyleDemo(),
            defaultTextStyleMergeDemo() */
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: richTextDemo())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
