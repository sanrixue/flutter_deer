
import 'package:flutter/material.dart';
import 'package:flutter_deer/login/login_router.dart';
import 'package:flutter_deer/routers/fluro_navigator.dart';
import 'package:flutter_deer/util/image_utils.dart';
import 'package:flutter_deer/widgets/app_bar.dart';
import 'package:flutter_deer/widgets/click_item.dart';

class AccountManagerPage extends StatefulWidget {
  @override
  _AccountManagerPageState createState() => _AccountManagerPageState();
}

class _AccountManagerPageState extends State<AccountManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: "账号管理",
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClickItem(
                title: "店铺logo",
                onTap: (){}
              ),
              Positioned(
                top: 8.0,
                bottom: 8.0,
                right: 40.0,
                child: loadAssetImage("shop/tx", width: 34.0),
              )
            ],
          ),
          ClickItem(
              title: "修改密码",
              content: "用于密码登录",
              onTap: (){
                NavigatorUtils.push(context, LoginRouter.updatePasswordPage);
              }
          ),
          ClickItem(
              title: "绑定账号",
              content: "15000000000",
          ),
        ],
      ),
    );
  }
}
