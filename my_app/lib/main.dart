import 'package:flutter/material.dart';
import 'package:my_app/align_example.dart';
import 'package:my_app/container_decoration.dart';
import 'package:my_app/container_column.dart';
import 'package:my_app/positioned_example.dart';
import 'package:my_app/row_example.dart';
import 'package:my_app/sizedbox_example.dart';

void main() {
  runApp(const MyApp());
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
        /**  Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // child: Column(
        //   // Column is also a layout widget. It takes a list of children and
        //   // arranges them vertically. By default, it sizes itself to fit its
        //   // children horizontally, and tries to be as tall as its parent.
        //   //
        //   // Invoke "debug painting" (press "p" in the console, choose the
        //   // "Toggle Debug Paint" action from the Flutter Inspector in Android
        //   // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        //   // to see the wireframe for each widget.
        //   //
        //   // Column has various properties to control how it sizes itself and
        //   // how it positions its children. Here we use mainAxisAlignment to
        //   // center the children vertically; the main axis here is the vertical
        //   // axis because Columns are vertical (the cross axis would be
        //   // horizontal).
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text(
        //       'You have clicked the button this many times:',
        //     ),
        //     Text(
        //       '$_counter',
        //       style: Theme.of(context).textTheme.headlineMedium,
        //     ),
        //   ],
        // ),
        // child: decorationDemo(context)
        // child: columnDemo(),
        // child: Wrap(
        //   direction: Axis.vertical,
        //   spacing: 10,
        //   runSpacing: 30,
        //   runAlignment: WrapAlignment.start,
        //   children: [
        //     FlutterLogo(),
        //     FlutterLogo(),
        //     FlutterLogo(),
        //     FlutterLogo(),
        //     FlutterLogo()
        //   ],
        // ),
        // child: Stack(
        //   alignment: Alignment.topRight,
        //   children: [
        //     FlutterLogo(size: 100),
        //     Positioned(
        //         bottom: 10,
        //         child: Container(
        //           width: 50,
        //           height: 50,
        //           color: Color.fromRGBO(158, 158, 158, 1),
        //         ))
        //   ],
        // ),
        // child: Container(
        //   width: 200,
        //   height: 200,
        //   color: Colors.grey,
        //   child: Stack(
        //     clipBehavior: Clip.none,
        //     children: [
        //       Positioned(top: -25, left: -50, child: FlutterLogo(size: 100))
        //     ],
        //   ),
        // ),
        // child: positionedDemo(),
        // child: sizedBoxDemo(),
        // child: sizeBoxPlaceholder(),
        // child: sizeBoxTestDemo()
        // child: rowDemo(),
        // child: alignDemo(),
        // child: alignOtherDemo(),
        // child: alignWidthHeightDemo(),
        // Container(
        // width: 200,
        // height: 100,
        // color: Colors.red.withOpacity(0.5),
        // alignment: Alignment.topLeft,
        // child: Container(
        //   width: 100,
        //   height: 100,
        //   margin: const EdgeInsets.only(left: 8.0, bottom: 8.0),
        //   padding: const EdgeInsets.all(16.0),
        //   color: Colors.black.withOpacity(0.5),
        //   alignment: Alignment.topLeft,
        //   child: Container(
        //     width: 50,
        //     height: 50,
        //     color: Colors.white,
        //     alignment: Alignment.center,
        //     child: const FlutterLogo(
        //       size: 24,
        //       style: FlutterLogoStyle.stacked,
        //     ),
        //   ),
        // ),
        // child: decorationDemo(context),
        // )
        */

        //文字和图片
        child: Text("Hello Flutter!"),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
