import 'package:flutter/material.dart';
import 'package:flutter_jjclound/page/launch_page.dart';
import 'package:flutter_jjclound/page/login_page.dart';
import 'package:flutter_jjclound/page/msg_comfig_page.dart';

class RouteConst{
  // 初始路由
  static const String LaunchRoute = LaunchPage.routerName;
  static const String LoginRoute  = LoginPage.routerName;
  static const String MsgComfigRoute = MsgComfigPage.routerName;


  // 路由列表
  static final Map<String, WidgetBuilder> routeList = {
    LaunchPage.routerName: (ctx) => LaunchPage(title: '启动页',),
    LoginPage.routerName: (ctx) => LoginPage(title: '登录页',),
    MsgComfigPage.routerName: (ctx) => MsgComfigPage(title: '信息确认页',),
  };
}