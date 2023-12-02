import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adeeinappwebview/flutter_adeeinappwebview.dart';

import 'package:flutter_adeeinappwebview_example/chrome_safari_browser_example.screen.dart';
import 'package:flutter_adeeinappwebview_example/headless_in_app_webview.screen.dart';
import 'package:flutter_adeeinappwebview_example/in_app_webiew_example.screen.dart';
import 'package:flutter_adeeinappwebview_example/in_app_browser_example.screen.dart';
import 'package:flutter_adeeinappwebview_example/web_authentication_session_example.screen.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';

InAppLocalhostServer localhostServer =
    InAppLocalhostServer(documentRoot: 'assets');

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Permission.camera.request();
  // await Permission.microphone.request();
  // await Permission.storage.request();

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }

  if (!kIsWeb) {
    await localhostServer.start();
  }

  runApp(MyApp());
}

PointerInterceptor myDrawer({required BuildContext context}) {
  var children = [
    ListTile(
      title: Text('InAppWebView'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/');
      },
    ),
    ListTile(
      title: Text('InAppBrowser'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/InAppBrowser');
      },
    ),
    ListTile(
      title: Text('ChromeSafariBrowser'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/ChromeSafariBrowser');
      },
    ),
    ListTile(
      title: Text('WebAuthenticationSession'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/WebAuthenticationSession');
      },
    ),
    ListTile(
      title: Text('HeadlessInAppWebView'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/HeadlessInAppWebView');
      },
    ),
  ];
  if (kIsWeb) {
    children = [
      ListTile(
        title: Text('InAppWebView'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/');
        },
      )
    ];
  } else if (defaultTargetPlatform == TargetPlatform.macOS) {
    children = [
      // ListTile(
      //   title: Text('InAppWebView'),
      //   onTap: () {
      //     Navigator.pushReplacementNamed(context, '/');
      //   },
      // ),
      // ListTile(
      //   title: Text('InAppBrowser'),
      //   onTap: () {
      //     Navigator.pushReplacementNamed(context, '/InAppBrowser');
      //   },
      // ),
      ListTile(
        title: Text('InAppBrowser'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/');
        },
      ),
      ListTile(
        title: Text('WebAuthenticationSession'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/WebAuthenticationSession');
        },
      ),
      ListTile(
        title: Text('HeadlessInAppWebView'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/HeadlessInAppWebView');
        },
      ),
    ];
  }
  return PointerInterceptor(
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('flutter_adeeinappwebview example'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ...children
        ],
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return MaterialApp(initialRoute: '/', routes: {
        '/': (context) => InAppWebViewExampleScreen(),
      });
    }
    if (defaultTargetPlatform == TargetPlatform.macOS) {
      return MaterialApp(initialRoute: '/', routes: {
        // '/': (context) => InAppWebViewExampleScreen(),
        // '/InAppBrowser': (context) => InAppBrowserExampleScreen(),
        '/': (context) => InAppBrowserExampleScreen(),
        '/HeadlessInAppWebView': (context) =>
            HeadlessInAppWebViewExampleScreen(),
        '/WebAuthenticationSession': (context) =>
            WebAuthenticationSessionExampleScreen(),
      });
    }
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => InAppWebViewExampleScreen(),
      '/InAppBrowser': (context) => InAppBrowserExampleScreen(),
      '/ChromeSafariBrowser': (context) => ChromeSafariBrowserExampleScreen(),
      '/HeadlessInAppWebView': (context) => HeadlessInAppWebViewExampleScreen(),
      '/WebAuthenticationSession': (context) =>
          WebAuthenticationSessionExampleScreen(),
    });
  }
}
