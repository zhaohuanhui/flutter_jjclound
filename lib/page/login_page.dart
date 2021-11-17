import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _account = TextEditingController();
  TextEditingController _passWord = TextEditingController();
  String? _errorTextAccount;
  String? _errorTextPassWord;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  ImageRes.asset("login_bg"),
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 260,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 0, right: 0),
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageRes.asset("login_bg_text"),
                    fit: BoxFit.fill,
                    width: 306,
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
                      ImageRes.asset("shouji"),
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
                              errorStyle: TextStyle(color: Colors.redAccent),
                            )))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  children: [
                    Image.asset(
                      ImageRes.asset("dunpai"),
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
                                color: ColorRes.color_Text_0xFFC2C2C2),
                            errorText: _errorTextPassWord),
                      ),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(38, 10, 10, 10),
              width: double.infinity,
              child: GestureDetector(
                  child: Text('忘记密码?',
                      style: TextStyle(
                          color: ColorRes.color_Text_0xFF8F8F8F, fontSize: 12)),
                  onTap: _forgetPassWord),
            ),
            gradientButton(),
            Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Container(
                        width: 108,
                        height: 1,
                        color: ColorRes.color_Button_0xFF2DC897),
                    Text(
                      '其他登录方式?',
                      style: TextStyle(
                          color: ColorRes.color_Text_0xFFC2C2C2, fontSize: 12),
                    ),
                    Container(
                        width: 108,
                        height: 1,
                        color: ColorRes.color_Button_0xFF2DC897)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

_inputLogin() {
  print("点击了登录按钮");
}

_forgetPassWord() {
  print("点击了忘记密码?");
}

// 登录按钮
Widget gradientButton() {
  return Container(
    margin: EdgeInsets.fromLTRB(30, 35, 30, 0),
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
        height: 50,
        child: Text(
          '登 录',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    ),
  );
}
