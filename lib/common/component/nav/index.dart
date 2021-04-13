import 'package:flutter/material.dart';
import 'package:flutter_application_gis/common/router/app_pages.dart';
import 'package:get/get.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.Home + AppRoutes.Dashboard);
              },
              icon: Icon(Icons.home)),
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.Home + AppRoutes.Users);
              },
              icon: Icon(Icons.supervised_user_circle)),
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.Home + AppRoutes.Company);
              },
              icon: Icon(Icons.cake)),
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.Home + AppRoutes.Projects);
              },
              icon: Icon(Icons.palette)),
        ],
      ),
    );
  }
}
