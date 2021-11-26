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
    margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
    child: TextField(
    keyboardType: TextInputType.number,
    maxLines: 1,
    style: TextStyle(fontSize: 14),
    decoration: InputDecoration(
    fillColor: Colors.grey[50],
    //背景颜色，必须结合filled: true,才有效
    filled: true,
    //重点，必须设置为true，fillColor才有效
    isCollapsed: true,
    //重点，相当于高度包裹的意思，必须设置为true，不然有默认奇妙的最小高度
    contentPadding: EdgeInsets.symmetric(
    horizontal: 5, vertical: 6),
    //内容内边距，影响高度
    prefixIcon: Padding(
    padding: EdgeInsets.only(
    left: 5, top: 0, right: 5, bottom: 0),
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
    fontSize: 12,
    color: ColorRes.color_Text_0xFFC3C3C3),
    border: OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(30)),
    )),
    ),
    ),
    new Container(
    width: double.infinity,
    padding: EdgeInsets.only(
    left: 0, top: 0, right: 0, bottom: 0),
    margin: EdgeInsets.fromLTRB(15, 0, 15, 20),
    child: Row(
    children: [
    Expanded(
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
      child: TextField(
        keyboardType: TextInputType.number,
        maxLines: 1,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
            fillColor: Colors.grey[50],
            //背景颜色，必须结合filled: true,才有效
            filled: true,
            //重点，必须设置为true，fillColor才有效
            isCollapsed: true,
            //重点，相当于高度包裹的意思，必须设置为true，不然有默认奇妙的最小高度
            contentPadding: EdgeInsets.symmetric(
                horizontal: 5, vertical: 6),
            //内容内边距，影响高度
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                  left: 5,
                  top: 0,
                  right: 5,
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
                fontSize: 12,
                color:
                ColorRes.color_Text_0xFFC3C3C3),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(30)))),
      ),
    ),
    flex: 1,
    ),
    ButtonTheme(
      padding: EdgeInsets.only(
          left: 0, top: 0, right: 0, bottom: 0),
    height: 26,
    child: RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25)),
    textColor: ColorRes.color_Text_0xFFFFFFFF,
    color: ColorRes.color_0xFF007AFF,
    child: Text(
    '获取验证码',
    style: TextStyle(
    color: Colors.white, fontSize: 10),
    ),
    onPressed: () {},
    ),
    ),
    ],
    ),
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
