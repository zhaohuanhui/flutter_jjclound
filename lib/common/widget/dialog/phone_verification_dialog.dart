
import 'package:flutter/material.dart';

class PhoneVerificationDialog extends Dialog {
  const PhoneVerificationDialog({
    Key? key, String? title, Null Function()? onBoyChooseEvent, Null Function()? onGirlChooseEvent,
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
                        new Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 40.0, 10.0, 28.0),
                            child: Center(
                                child: new Text('修改手机号码',
                                    style: new TextStyle(
                                      fontSize: 18,
                                    )))),
                        new Text("请填写您需绑定的手机号码，验证码将会发送至您的手机。（每天最多只能修改三次手机号码）",
                            style: new TextStyle(
                              fontSize: 10,
                            )),
                        new TextField(decoration: InputDecoration(

                        ),),
                      ]))
                ])));
  }
   show(BuildContext context){
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
