import 'package:flutter/material.dart';
import 'package:flutter_jjclound/page/msg_comfig_page.dart';

class RouteUtil{
  /// push
  static push(BuildContext context, Widget pageRoute, { RouteSettings? settings}) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => pageRoute,
        settings: settings
    ));
  }

  //pop
  static pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  /// 跳转到main
  static pushMainRoot(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(MsgComfigPage.routerName);
  }

  /// 返回到根路由
  static popRoot(BuildContext context) {
    Navigator.of(context).popUntil(ModalRoute.withName('/'));
  }

  /// 登录返回到指定路由
  static popToRoutePage( BuildContext context) {
    final routeName = ModalRoute.of(context)!.settings.arguments as RoutePredicate;
    if (routeName == '/') {
      popRoot(context);
    } else {
      Navigator.of(context).popUntil(routeName);
    }
  }

  static final RouteFactory unknownRoute = (setting) {
    return null;
  };


}