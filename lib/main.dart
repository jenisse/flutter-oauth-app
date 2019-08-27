import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:oauthdemo/constants.dart';
import 'package:oauthdemo/login.dart';

void main() => runApp(MyConstants(
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/azure': (context) => Login(
              urlPath: MyConstants.of(context).urlLoginAzure,
            ),
        '/aws': (context) => Login(
              urlPath: MyConstants.of(context).urlLoginAws,
            ),
        '/auth0': (context) => Login(
              urlPath: MyConstants.of(context).urlLoginAuth0,
            ),
        '/dashboard': (context) =>MyHomePage(title: 'Flutter Demo Home Page'),
      },
      // home: Login(),
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
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    flutterWebviewPlugin.onUrlChanged.listen((String url) {
      print(url);
    });
  }

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
            FlatButton.icon(
              color: Colors.blue,
              icon: Icon(Icons.account_circle), //`Icon` to display
              label: Text('Inicia Sesión Azure'), //`Text` to display
              onPressed: () {
                print("messa azure");
                Navigator.pushNamed(context, '/azure');
              },
            ),
            FlatButton.icon(
              color: Colors.red,
              icon: Icon(Icons.account_circle), //`Icon` to display
              label: Text('Inicia Sesión Aws'), //`Text` to display
              onPressed: () {
                print("messa aws");
                Navigator.pushNamed(context, '/aws');
              },
            ),
            FlatButton.icon(
              color: Colors.orange,
              icon: Icon(Icons.account_circle), //`Icon` to display
              label: Text('Inicia Sesión Auth0'), //`Text` to display
              onPressed: () {
                print("messa auth0");
                Navigator.pushNamed(context, '/auth0');
              },
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
