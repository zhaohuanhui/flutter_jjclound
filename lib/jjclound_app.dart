import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/utils/route/route_const.dart';
import 'package:flutter_jjclound/common/utils/route/route_util.dart';

class JJCloundApp extends StatefulWidget {
  const JJCloundApp({Key? key}) : super(key: key);

  @override
  _JJCloundAppState createState() => _JJCloundAppState();
}

class _JJCloundAppState extends State<JJCloundApp> with NavigatorObserver {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routeMapList = RouteConst.routeList;
    return MaterialApp(
      title: '广州继教云课堂',
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
        primarySwatch: Colors.green,
      ),
      routes: routeMapList,
      debugShowCheckedModeBanner: false,
      initialRoute:RouteConst.LaunchRoute,
      onUnknownRoute: RouteUtil.unknownRoute,
      navigatorObservers: [this],
    );
  }
}