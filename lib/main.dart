import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stock_example/graph.dart';
import 'package:stock_example/login.dart';
import 'package:stock_example/stockpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stock App",
      initialRoute: '/',
      onGenerateRoute: routing,
      home: Login(),
    );
  }

  Route routing(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return PageTransition(
            child: Login(), type: PageTransitionType.rightToLeftWithFade);
        break;
      case '/stockpage':
        return PageTransition(
            child: StockPage(), type: PageTransitionType.rightToLeftWithFade);
        break;
      case '/graph':
        return PageTransition(
            child: GraphData(), type: PageTransitionType.rightToLeftWithFade);
        break;  
      default:
        return PageTransition(
            child: StockPage(), type: PageTransitionType.rightToLeftWithFade);
        break;
    }
  }
}
