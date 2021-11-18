import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/utils/route/route_util.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

class MainPage extends StatefulWidget {
  static const String routerName = "MainPage";

  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            Container(
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
                        top: 31, left: 28, right: 0, bottom: 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "确认个人基础信息",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: ColorRes.color_Text_0xFFFFFFFF,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
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
