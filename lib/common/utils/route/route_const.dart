import 'package:flutter/material.dart';
import 'package:flutter_jjclound/page/launch/launch_page.dart';
import 'package:flutter_jjclound/page/login/choose_training_program_page.dart';
import 'package:flutter_jjclound/page/login/login_page.dart';
import 'package:flutter_jjclound/page/login/msg_comfig_page.dart';

class RouteConst{
  // 初始路由
  static const String LaunchRoute = LaunchPage.routerName;
  static const String LoginRoute  = LoginPage.routerName;
  static const String MsgComfigRoute = MsgComfigPage.routerName;
  static const String ChooseTrainingProgramRoute = ChooseTrainingProgramPage.routerName;

  // 路由列表
  static final Map<String, WidgetBuilder> routeList = {
    LaunchPage.routerName: (ctx) => LaunchPage(title: '启动页',),
    LoginPage.routerName: (ctx) => LoginPage(title: '登录页',),
    MsgComfigPage.routerName: (ctx) => MsgComfigPage(title: '信息确认页',),
    ChooseTrainingProgramPage.routerName: (ctx) => ChooseTrainingProgramPage(title: '选择培训项目',),
  };
}