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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
            Row(
              children: [
                Image.asset(
                  ImageRes.asset("shouji"),
                  fit: BoxFit.fill,
                  width: 28,
                  height: 28,
                ),
                const Expanded(child:
                TextField(
                  cursorWidth: 200,
                  cursorHeight: 28,
                  cursorColor: ColorRes.color_000000,
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: "请输入用户名/手机号",
                      labelText: "请输入用户名/手机号",
                      errorText: "用户名/手机号不能为空"),
                )
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  ImageRes.asset("dunpai"),
                  fit: BoxFit.fill,
                  width: 28,
                  height: 28,
                ),
                const Expanded(child:  TextField(
                    cursorWidth: 200,
                    cursorHeight: 28,
                    cursorColor: ColorRes.color_000000,
                    maxLines: 1,
                    decoration: InputDecoration(
                        hintText: "请输入密码",
                        labelText: "请输入密码",
                        errorText: "密码不能为空")),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
