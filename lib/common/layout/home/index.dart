import 'package:flutter/material.dart';
import 'package:flutter_application_gis/common/component/nav/index.dart';

class LayoutView extends StatelessWidget {
  final Widget content;

  const LayoutView({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Row(
          children: [
            NavWidget(),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: content,
            )),
          ],
        ),
      ),
    );
  }
}
