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
                                //??????????????????
                                print("?????????" + value);
                                if (value.isEmpty) {
                                  _errorTextAccount = "?????????/?????????????????????";
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
                              hintText: "??????????????????/?????????",
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
                            //??????????????????
                            print("??????" + value);
                            if (value.isEmpty) {
                              _errorTextPassWord = "??????????????????";
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
                            hintText: "???????????????",
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
                    '??????????????????',
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

  /// ????????????
  Container _forGetPassWord() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: double.infinity,
      child: GestureDetector(
          child: Text('?????????????',
              style: TextStyle(
                  color: ColorRes.color_Text_0xFF8F8F8F, fontSize: 12)),
          onTap: _forgetPassWord),
    );
  }

  /// ????????????
  Container _gradientButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorRes.color_Button_0xFF51E6A5,
            ColorRes.color_Button_0xFF2DC897
          ]), // ?????????
          borderRadius: BorderRadius.circular(25)),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.transparent,
        // ???????????????
        elevation: 0,
        // ?????????????????????
        highlightElevation: 0,
        // ?????????????????????
        onPressed: () {
          _inputLogin();
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          child: Text(
            '??? ???',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

///????????????
_forgetPassWord() {
  print("??????????????????????");
}

/// ????????????
_inputLogin() {
  ToastUtil.showLoading();
  Future.delayed(Duration(milliseconds: 500), () {
    print("?????????????????????");
    _loginPost();
    ToastUtil.dismiss();
  });
}

/// ????????????
Future<ApiResponse<LoginBean>?> _loginPost() async {
  try {
    Map<String, dynamic> map = Map();
    map['IOS_FLAG'] = "N";
    map['userCode'] = "LAN";
    map['APP_ID'] = "APP007";
    map['userPsw'] = "lan123456!!";
    dynamic response = await HttpUtils.post(Api.login, params: map);
    Map<String, dynamic> responseData =
        jsonDecode(Uri.decodeComponent(response));
    LoginBean data = LoginBean.fromJson(responseData);
    print("data:" + data.toJson().toString());
    // if(_account.text.isEmpty){
    //   ToastUtil.showError("??????????????????");
    // }else if(_passWord.text.isEmpty){
    //   ToastUtil.showError("??????????????????");
    // }
    // else{
    if (data.login.toString() == "N") {
      print("????????????");
      ToastUtil.showError("???????????????????????????");
    } else {
      ToastUtil.showSuccess("????????????");
      print("????????????");
      RouteUtil.push(
          _buildContext,
          const MsgComfigPage(
            title: "?????????",
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
