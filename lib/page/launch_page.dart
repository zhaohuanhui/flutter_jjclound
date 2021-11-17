import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_jjclound/page/login_page.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  int _countdown = 3;
  Timer? _countdownTimer;
  @override
  void initState() {
    super.initState();
    _startRecordTime();
    print('初始化启动页面');
  }
  @override
  void dispose() {
    super.dispose();
    print('启动页面结束');
    if (_countdownTimer != null && _countdownTimer!.isActive) {
      _countdownTimer!.cancel();
      _countdownTimer = null;
    }
  }

  void _startRecordTime() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown <= 1) {
//          Navigator.of(context).pushNamed("/demo1");
          Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const LoginPage(title: '登录页面',);
          }));
          _countdownTimer!.cancel();
          _countdownTimer = null;
        } else {
          _countdown -= 1;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(ImageRes.asset("launch_image"), fit: BoxFit.fill),
            Positioned(
              top: 30,
              right: 30,
              child: Container(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: '$_countdown',
                        style: const TextStyle(
                          fontSize: 18,
                          color: ColorRes.color_0xFFFFFFFF,
                        )),
                    const TextSpan(
                        text: '跳过',
                        style: TextStyle(
                          fontSize: 18,
                          color: ColorRes.color_0xFFFFFFFF,
                        )),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}