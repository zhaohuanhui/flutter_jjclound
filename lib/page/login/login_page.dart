import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/net/api/api_url.dart';
import 'package:flutter_jjclound/common/net/bean/api_response.dart';
import 'package:flutter_jjclound/common/net/bean/do_login_bean.dart';
import 'package:flutter_jjclound/common/net/http_utils.dart';
import 'package:flutter_jjclound/common/utils/route/route_util.dart';
import 'package:flutter_jjclound/common/widget/toast/toast_util.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';
import 'msg_comfig_page.dart';

class LoginPage extends StatefulWidget {
  static const String routerName = "LoginPage";

  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

late BuildContext _buildContext;
TextEditingController _account = TextEditingController();
TextEditingController _passWord = TextEditingController();
String? _errorTextAccount;
String? _errorTextPassWord;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  ImageRes.imageName("login_bg"),
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 260,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 44, left: 35, right: 35, bottom: 0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageRes.imageName("login_bg_text"),
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 47,
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                            maxLines: 1,
                            controller: _account,
                            onChanged: (value) {
                              this.setState(() {
                                //内容变化事件
                                print("用户名" + value);
                                if (value.isEmpty) {
                                  _errorTextAccount = "用户名/手机号不能为空";
                                } else {
                                  _errorTextAccount = "";
                                }
                              });
                            },
                            decoration: InputDecoration(
                              prefixIcon: Image(
                                  image:
                                      AssetImage(ImageRes.imageName("phone")),
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.fill),
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 28, minHeight: 28),
                              hintText: "请输入用户名/手机号",
                              hintStyle: TextStyle(
                                  color: ColorRes.color_Text_0xFFC2C2C2,
                                  fontSize: 14),
                              errorText: _errorTextAccount,
                              errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 10,
                              ),
                            )))
                  ],
                )),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        maxLines: 1,
                        controller: _passWord,
                        onChanged: (value) {
                          this.setState(() {
                            //内容变化事件
                            print("密码" + value);
                            if (value.isEmpty) {
                              _errorTextPassWord = "密码不能为空";
                            } else {
                              _errorTextPassWord = "";
                            }
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Image(
                              image: AssetImage(ImageRes.imageName("password")),
                              width: 28,
                              height: 28,
                              fit: BoxFit.fill,
                            ),
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 28, minHeight: 28),
                            hintText: "请输入密码",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: ColorRes.color_Text_0xFFC2C2C2),
                            errorText: _errorTextPassWord,
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 10,
                            )),
                      ),
                    )
                  ],
                )),
            _forGetPassWord(),
            _gradientButton(),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 10,
                        height: 1,
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        color: ColorRes.color_Line_0xFFEFEFEF),
                    flex: 1,
                  ),
                  Text(
                    '其他登录方式',
                    style: TextStyle(
                        color: ColorRes.color_Text_0xFFC2C2C2, fontSize: 12),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        width: 10,
                        height: 1,
                        color: ColorRes.color_Line_0xFFEFEFEF),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Image.asset(
                    ImageRes.imageName("email"),
                    fit: BoxFit.fill,
                    width: 34,
                    height: 34,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Image.asset(
                    ImageRes.imageName("wechat"),
                    fit: BoxFit.fill,
                    width: 34,
                    height: 34,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  /// 忘记密码
  Container _forGetPassWord() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: double.infinity,
      child: GestureDetector(
          child: Text('忘记密码?',
              style: TextStyle(
                  color: ColorRes.color_Text_0xFF8F8F8F, fontSize: 12)),
          onTap: _forgetPassWord),
    );
  }

  /// 登录按钮
  Container _gradientButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorRes.color_Button_0xFF51E6A5,
            ColorRes.color_Button_0xFF2DC897
          ]), // 渐变色
          borderRadius: BorderRadius.circular(25)),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.transparent,
        // 设为透明色
        elevation: 0,
        // 正常时阴影隐藏
        highlightElevation: 0,
        // 点击时阴影隐藏
        onPressed: () {
          _inputLogin();
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          child: Text(
            '登 录',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
///忘记密码
_forgetPassWord() {
  print("点击了忘记密码?");
}
/// 登录按钮
_inputLogin() {
  ToastUtil.showLoading();
  Future.delayed(Duration(milliseconds: 500), () {
    print("点击了登录按钮");
    _loginPost();
    ToastUtil.dismiss();
  });
}

/// 登录请求
Future<ApiResponse<DoLoginBean>?> _loginPost() async {
  try {
    Map<String, dynamic> map = Map();
    map['IOS_FLAG'] = "N";
    map['userCode'] = "LAN";
    map['APP_ID'] = "APP007";
    map['userPsw'] = "lan123456!!";
    dynamic response = await HttpUtils.post(Api.login, params: map);
    Map<String, dynamic> responseData =
        jsonDecode(Uri.decodeComponent(response));
    DoLoginBean data = DoLoginBean.fromJson(responseData);
    print("data:" + data.toJson().toString());
    // if(_account.text.isEmpty){
    //   ToastUtil.showError("账号不能为空");
    // }else if(_passWord.text.isEmpty){
    //   ToastUtil.showError("密码不能为空");
    // }
    // else{
    if (data.login.toString() == "N") {
      print("登录失败");
      ToastUtil.showError("密码或账号输入错误");
    } else {
      ToastUtil.showSuccess("登录成功");
      print("登录成功");
      RouteUtil.push(
          _buildContext,
          const MsgComfigPage(
            title: "主页面",
          ));
    }
    // }
    return ApiResponse.completed(data);
  } on DioError catch (e) {
    print(e);
    ToastUtil.showError(e.message + e.error);
    return ApiResponse.error(e.error);
  }
}
