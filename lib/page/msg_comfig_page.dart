import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/utils/route/route_util.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

class MsgComfigPage extends StatefulWidget {
  static const String routerName = "MsgComfigPage";

  const MsgComfigPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MsgComfigPage> createState() => _MsgComfigPageState();
}

class _MsgComfigPageState extends State<MsgComfigPage> {
  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            AppBar(
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: ColorRes.color_Theme_0xFFFFFFFF,
                title: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment(-1, -1),
                          children: <Widget>[
                            IconButton(
                              padding: EdgeInsets.only(right: 60),
                              icon: ImageIcon(
                                AssetImage(ImageRes.imageName("back")),
                                size: 16,
                              ),
                              color: Colors.black,
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                print("点击返回图标");
                                _back();
                              },
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(right: 15),
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: ColorRes.color_Text_0xFF000000,
                                    fontSize: 16),
                              ),
                              onPressed: () {
                                print("信息确认");
                                Navigator.pop(context);
                              },
                            )
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "信息确认",
                            style: TextStyle(
                                color: ColorRes.color_Text_0xFF000000,
                                fontSize: 16),
                          ),
                        )),
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    )
                  ],
                )
                // title: const Text('信息确认',style: TextStyle(fontSize: 16,color:ColorRes.color_Text_0xFF000000)),
                // leading:  IconButton(onPressed: _back(), icon: Image.asset(ImageRes.imageName("back"),width: 16,height: 16,)),
                ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                color: ColorRes.color_0xFFE6FFF1,
                child: Stack(
                  children: [
                    Image.asset(
                      ImageRes.imageName("msg_comfig_bg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 217,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 31, left: 28, right: 28, bottom: 0),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text(
                              "确认个人基础信息",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: ColorRes.color_Text_0xFFFFFFFF,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 0, right: 0, bottom: 0),
                              width: double.infinity,
                              child: Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: "姓名、身份证号码无法直接修改，如需修改请参考",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              ColorRes.color_Text_0xFF333333)),
                                  TextSpan(
                                      text: "《核心信息变更申请》",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              ColorRes.color_Text_0xFF5169B9)),
                                  TextSpan(
                                      text:
                                          "办理办法；所在单位修改请联系校管理员完成教师调动操作；其余信息可点击修改，提交修改后需校管理员审核。",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              ColorRes.color_Text_0xFF333333)),
                                ]),
                              )),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(
                                left: 0, right: 0, top: 10, bottom: 10),
                            child: Card(
                                color: ColorRes.color_0xFFFFFFFF,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 0, right: 0, top: 10, bottom: 10),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "姓名",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "李大明",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF666666),
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了姓名");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "所在单位",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "广州市某某区实验小学",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF666666),
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了所在单位");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "继教学号",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "44012345678",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF666666),
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了继教学号");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "身份证号",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "440*********1231",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF666666),
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了身份证号");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 8,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF8F8F8),
                                      Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 0,
                                              bottom: 0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "登录账号",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "请输入登录账号",
                                                      hintStyle: TextStyle(
                                                          color: ColorRes.color_Text_0xFFC2C2C2,
                                                          fontSize: 13)
                                                  ),
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(child: Container(
                                        padding: EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                            top: 10,
                                            bottom: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              "手机号码",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: ColorRes
                                                      .color_Text_0xFF333333),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "18612340123",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: ColorRes
                                                        .color_Text_0xFF5169B9),
                                              ),
                                              flex: 1,
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: (){
                                        print("点击了手机号码");
                                      },),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                   Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 0,
                                              bottom: 0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "电子邮箱",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "请输入邮箱",
                                                      hintStyle: TextStyle(
                                                          color: ColorRes.color_Text_0xFFC2C2C2,
                                                          fontSize: 13)
                                                  ),
                                                  maxLines: 1,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 8,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF8F8F8),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "任教学科",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "语文",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              ),
                                              Image.asset(
                                                ImageRes.imageName("enter"),
                                                fit: BoxFit.fill,
                                                width: 10,
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了任教学科");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "任教学段",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "小学",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              ),
                                              Image.asset(
                                                ImageRes.imageName("enter"),
                                                fit: BoxFit.fill,
                                                width: 10,
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了任教学段");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "职称",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "正高级教师",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              ),
                                              Image.asset(
                                                ImageRes.imageName("enter"),
                                                fit: BoxFit.fill,
                                                width: 10,
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了职称");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "学历",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "本科",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              ),
                                              Image.asset(
                                                ImageRes.imageName("enter"),
                                                fit: BoxFit.fill,
                                                width: 10,
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了学历");
                                        },
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 1,
                                          margin: const EdgeInsets.only(
                                              top: 0,
                                              left: 20,
                                              right: 20,
                                              bottom: 0),
                                          color:
                                              ColorRes.color_Line_0xFFF6F6F6),
                                      InkWell(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 10,
                                              bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "现任职务",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: ColorRes
                                                        .color_Text_0xFF333333),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "校长",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: ColorRes
                                                          .color_Text_0xFF5169B9),
                                                ),
                                                flex: 1,
                                              ),
                                              Image.asset(
                                                ImageRes.imageName("enter"),
                                                fit: BoxFit.fill,
                                                width: 10,
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          print("点击了现任职位");
                                        },
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          gradientButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

late BuildContext _buildContext;

_back() {
  RouteUtil.pop(_buildContext);
}
_msgConfig() {
  print("点击了信息确认按钮");
  RouteUtil.push(_buildContext, const MsgComfigPage(title: "主页面",));
}

// 登录按钮
Widget gradientButton() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
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
        _msgConfig();
      },
      child: Container(
        alignment: Alignment.center,
        width: 335,
        height: 50,
        child: Text(
          '提交审核',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    ),
  );
}
