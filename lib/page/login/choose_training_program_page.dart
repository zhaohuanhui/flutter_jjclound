import 'package:flutter/material.dart';
import 'package:flutter_jjclound/common/utils/route/route_util.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

class ChooseTrainingProgramPage extends StatefulWidget {
  static const String routerName = "ChooseTrainingProgramPage";

  const ChooseTrainingProgramPage({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  State<ChooseTrainingProgramPage> createState() =>
      _ChooseTrainingProgramPageState();
}

late BuildContext _buildContext;

class _ChooseTrainingProgramPageState extends State<ChooseTrainingProgramPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _buildContext = context;
    return Scaffold(
        backgroundColor: ColorRes.color_0xFF251D83,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      ImageRes.imageName("choose_training_program_bg"),
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 260,
                    ),
                    AppBar(
                        elevation: 0,
                        centerTitle: true,
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.transparent,
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
                                            color:
                                                ColorRes.color_Text_0xFF000000,
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
                                    "选择培训项目",
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
                      margin: const EdgeInsets.only(
                          top: 160, left: 28, right: 28, bottom: 0),
                      child: Text("请选择培训项目",
                          style: TextStyle(
                              color: ColorRes.color_Text_0xFFFFFFFF,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

_back() {
  RouteUtil.pop(_buildContext);
}
