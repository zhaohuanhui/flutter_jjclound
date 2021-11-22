import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/net/api/api_url.dart';
import 'package:flutter_jjclound/common/net/bean/api_response.dart';
import 'package:flutter_jjclound/common/net/bean/do_login_bean.dart';
import 'package:flutter_jjclound/common/net/http_utils.dart';
import 'package:flutter_jjclound/common/utils/route/route_util.dart';
import 'package:flutter_jjclound/page/msg_comfig_page.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

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
class _LoginPageState extends State<LoginPage> {
  String? _errorTextAccount;
  String? _errorTextPassWord;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    _buildContext=context;
    return Scaffold(
      body: Container(
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
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  children: [
                    Image.asset(
                      ImageRes.imageName("phone"),
                      fit: BoxFit.fill,
                      width: 28,
                      height: 28,
                    ),
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
                              hintText: "请输入用户名/手机号",
                              hintStyle: TextStyle(
                                  color: ColorRes.color_Text_0xFFC2C2C2,
                                  fontSize: 14),
                              errorText: _errorTextAccount,
                              errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            )))
                  ],
                )),
            Container(
                margin:  EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  children: [
                    Image.asset(
                      ImageRes.imageName("password_hint"),
                      fit: BoxFit.fill,
                      width: 28,
                      height: 28,
                    ),
                    Expanded(
                      child: TextField(
                        maxLines: 1,
                        controller: _passWord,
                        onChanged: (value) {
                          this.setState(() {
                            //内容变化事件
                            print("密码" + value);
                            if (value.isEmpty) {
                              _errorTextPassWord = "用户名/手机号不能为空";
                            } else {
                              _errorTextPassWord = "";
                            }
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "请输入密码",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: ColorRes.color_Text_0xFFC2C2C2),
                            errorText: _errorTextPassWord,
                            errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 14,
                            )),
                      ),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
              width: double.infinity,
              child: GestureDetector(
                  child: Text('忘记密码?',
                      style: TextStyle(
                          color: ColorRes.color_Text_0xFF8F8F8F, fontSize: 12)),
                  onTap: _forgetPassWord),
            ),
            gradientButton(),
            Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                        width: 100,
                        height: 1,
                        margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                        color: ColorRes.color_Line_0xFFEFEFEF),
                    Text(
                      '其他登录方式?',
                      style: TextStyle(
                          color: ColorRes.color_Text_0xFFC2C2C2, fontSize: 12),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        width: 100,
                        height: 1,
                        color: ColorRes.color_Line_0xFFEFEFEF)
                  ],
                )),
            Container(
              width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, child: Container(),
                    ),
                       Image.asset(
                          ImageRes.imageName("email"),
                          fit: BoxFit.fill,
                          width: 34,
                          height: 34,
                        ),

                    Expanded(
                      flex: 1, child: Container(),
                    ),
                     Image.asset(
                        ImageRes.imageName("wechat"),
                        fit: BoxFit.fill,
                        width: 34,
                        height: 34,
                      ),
                    Expanded(
                      flex: 1, child: Container(),
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}

_inputLogin() {
  print("点击了登录按钮");
  FormData formData = FormData.fromMap({"name",_account.text, "password",_passWord.text});
  // Map<String,dynamic> map = Map();
  // map['name']=_account.text;
  // map['password']=_passWord.text;
  // RouteUtil.push(_buildContext, const MsgComfigPage(title: "主页面",));
  dynamic response =  HttpUtils.post(Api.login,data:formData);
  print("response:"+response.toString());
  //   var json = json.decode(response.data);
  // print("json："+decode.toString());

  // Future<ApiResponse<DoLoginBean>> getReelData() async {
  //   try {
      print("response:"+response.toString());
      // DoLoginBean data = DoLoginBean.fromJson(response);
      // return ApiResponse.completed(data);
    // } on DioError catch (e) {
    //   print(e);
    //   return ApiResponse.error(e.error);
    // }
  // }
}

_forgetPassWord() {
  print("点击了忘记密码?");
}

// 登录按钮
Widget gradientButton() {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
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
        width: 335,
        height: 50,
        child: Text(
          '登 录',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    ),
  );
}
