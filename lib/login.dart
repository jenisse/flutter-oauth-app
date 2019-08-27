import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Login extends StatelessWidget {
  final String urlPath;

  Login({Key key, @required this.urlPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: this.urlPath,
      hidden: true,
      appBar: AppBar(title: Text("Inicio de Sesión")),
    );
  }
}
