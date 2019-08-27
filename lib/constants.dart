
import 'package:flutter/widgets.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(MyConstants);

  const MyConstants({Widget child, Key key}) : super(key: key, child: child);

  final String urlLoginAzure = 'http://172.22.16.17:8080/api/oauth2/authorize/azure?redirect_uri=oauthdemo://dashboard';
  final String urlLoginAws = 'http://172.22.16.17:8080/api/oauth2/authorize/cognito?redirect_uri=oauthdemo://dashboard';
   final String urlLoginAuth0 = 'http://172.22.16.17:8080/api/oauth2/authorize/auth0?redirect_uri=oauthdemo://dashboard';
  
  // final String urlLoginAzure = 'https://authgkn.westus2.azurecontainer.io:8443/api/oauth2/authorize/azure?redirect_uri=oauthdemo://dashboard';
  // final String urlLoginAws = 'https://authgkn.westus2.azurecontainer.io:8443/api/oauth2/authorize/cognito?redirect_uri=oauthdemo://dashboard';
  //  final String urlLoginAuth0 = 'https://authgkn.westus2.azurecontainer.io:8443/api/oauth2/authorize/auth0?redirect_uri=oauthdemo://dashboard';
  

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  
}
