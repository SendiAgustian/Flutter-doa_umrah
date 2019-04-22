import 'package:doa_umrah/View/chatUstadz.dart';
import 'package:doa_umrah/View/login.dart';
import 'package:flutter/material.dart';
import 'package:doa_umrah/View/dashboard.dart';
// import 'package:doa_umrah/View/listDoa.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Doa-doa Umrah",
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/halamanKeluar': (BuildContext context) => Login(),
        '/halamanDashboard': (BuildContext context) => Dashboard(),
        '/halamanTanyaUstadz': (BuildContext context) => TanyaUstadz(),
      },
    );
  }
}
