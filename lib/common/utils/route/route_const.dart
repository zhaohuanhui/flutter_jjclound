import 'package:flutter/material.dart';
import 'package:flutter_jjclound/page/launch_page.dart';
import 'package:flutter_jjclound/page/login_page.dart';
import 'package:flutter_jjclound/page/main_page.dart';

class RouteConst{
  // 初始路由
  static const String LaunchRoute = LaunchPage.routerName;
  static const String LoginRoute  = LoginPage.routerName;
  static const String MainRoute = MainPage.routerName;


  // 路由列表
  static final Map<String, WidgetBuilder> routeList = {
    LaunchPage.routerName: (ctx) => LaunchPage(title: '启动页',),
    LoginPage.routerName: (ctx) => LoginPage(title: '登录页',),
    MainPage.routerName: (ctx) => MainPage(title: '主页',),
  };
}