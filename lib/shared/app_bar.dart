import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grupo_3_app/shared/constants.dart';

class MyAppBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.amber,
      toolbarHeight: 150 * height * figmaHeightRatio,
      leading: IconButton(
        icon: SvgPicture.asset("lib/assets/svg/freezer.svg"),
        onPressed: () {
          widget.scaffoldKey.currentState?.openDrawer();
        },
      ),
    );
  }
}
