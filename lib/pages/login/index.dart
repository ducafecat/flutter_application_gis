import 'package:flutter/material.dart';
import 'package:flutter_application_gis/common/router/app_pages.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.Home);
                },
                child: Text("Login 登录")),
          ],
        ),
      ),
    );
  }
}
