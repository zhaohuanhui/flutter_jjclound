import 'package:flutter/material.dart';
import 'package:flutter_jjclound/res/color_res.dart';
import 'package:flutter_jjclound/res/image_res.dart';

class PhoneVerificationDialog extends Dialog {
  const PhoneVerificationDialog({
    Key? key,
    String? title,
    Null Function()? onBoyChooseEvent,
    Null Function()? onGirlChooseEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: const EdgeInsets.all(12.0),
        child: new Material(
            type: MaterialType.transparency,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      decoration: ShapeDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ))),
                      margin: const EdgeInsets.all(12.0),
                      child: new Column(children: <Widget>[
                        new Container(
                            margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
                            child: Center(
                                child: new Text('修改手机号码',
                                    style: new TextStyle(
                                      fontSize: 18,
                                    )))),
                        new Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                          child: new Text(
                              "请填写您需绑定的手机号码，验证码将会发送至您的手机。（每天最多只能修改三次手机号码）",
                              style: new TextStyle(
                                fontSize: 12,
                              )),
                        ),
                        new Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, top: 0, right: 15, bottom: 0),
                                  child: Image(
                                    image: AssetImage(
                                        ImageRes.imageName("gray_phone")),
                                    width: 18,
                                    height: 18,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                prefixIconConstraints:
                                    BoxConstraints(minWidth: 18, minHeight: 18),
                                hintText: "手机号",
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: ColorRes.color_Text_0xFFC3C3C3),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                )),
                          ),
                        ),
                        new Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                          child:Expanded(child:
                         Row(
                          children: [
                          Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15,
                                      top: 0,
                                      right: 15,
                                      bottom: 0),
                                  child: Image(
                                    image: AssetImage(ImageRes.imageName(
                                        "gray_password")),
                                    width: 18,
                                    height: 18,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                    minWidth: 18, minHeight: 18),
                                hintText: "短信验证码",
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    color:
                                    ColorRes.color_Text_0xFFC3C3C3),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30)))),
                          ),
                          flex: 20,
                        ),
                        Expanded(child: Container(),flex: 1,),
                        Expanded(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            textColor: ColorRes.color_Text_0xFFFFFFFF,
                            color: ColorRes.color_0xFF007AFF,
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              width: double.infinity,
                              child: Text(
                                '获取验证码',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                            onPressed: () {},
                          ),
                          flex: 10,
                        ),
                      ],
                      ),)
                     ,
                        ),
                        new Container(
                            width: double.infinity,
                            height: 1,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            color: ColorRes.color_Line_0xFFEFEFEF),
                        new Container(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '关 闭',
                                      style: TextStyle(
                                          color: ColorRes.color_Text_0xFF007AFF,
                                          fontSize: 15),
                                    ),
                                  ),
                                  onTap: () {
                                    dismiss(context);
                                    print("点击了关 闭");
                                  },
                                ),
                                flex: 1,
                              ),
                              Container(
                                width: 1,
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '确 定',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: ColorRes.color_Text_0xFF007AFF,
                                          fontSize: 15),
                                    ),
                                  ),
                                  onTap: () {
                                    dismiss(context);
                                    print("点击了确 定");
                                  },
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        )
                      ]))
                ])));
  }

  dismiss(BuildContext context) {
    Navigator.pop(context);
  }

  show(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PhoneVerificationDialog(
              title: '修改手机号码',
              onBoyChooseEvent: () {
                Navigator.pop(context);
              },
              onGirlChooseEvent: () {
                Navigator.pop(context);
              });
        });
  }
}
