import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/net/http_utils.dart';
import 'package:flutter_jjclound/common/utils/sp/sp_util.dart';
import 'package:flutter_jjclound/common/widget/toast/toast_util.dart';
import '../common/net/api/api_url.dart';
import 'jjclound_app.dart';

void main() {
  // 初始化本地存储类
   SpUtil().init();
  // 初始化request类
  HttpUtils.init(
    baseUrl: Api.baseUrl,
  );
   ToastUtil.setToastStyle();
  runApp(const JJCloundApp());
}




