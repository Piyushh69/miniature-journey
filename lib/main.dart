import 'package:flutter/material.dart';
import 'package:krc/pages/LoginPage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:krc/pages/webViewGuest.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter/src/webview_controller.dart';
import 'package:krc/pages/webViewGuest.dart';
import 'package:krc/pages/NavigationDrawer.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/':(context) => MyHomePage(),
        // '/webViewContainer':(context) => webViewContainer()
      },
      title: 'Krc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      // home: LoginScreen(),
      home: LoginScreen(),
    );
  }
}
