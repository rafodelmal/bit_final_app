import 'package:flutter/material.dart';
import 'package:flutter_app/route_generator.dart';

import 'package:flutter_app/utils/controllerFirebase.dart' as firebaseAuth;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  firebaseAuth.Initialing();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

