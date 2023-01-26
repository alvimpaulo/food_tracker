import 'package:flutter/material.dart';
import 'package:grupo_3_app/shared/app_bar.dart';

import 'constants.dart';
import 'drawer.dart';

class AppScaffold extends StatefulWidget {
  final Widget body;
  final Widget? fab;
  final Widget? title;

  const AppScaffold({Key? key, required this.body, this.fab, this.title})
      : super(key: key);

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 150 * height * figmaHeightRatio),
        child: MyAppBar(
          title: widget.title,
          scaffoldKey: _scaffoldKey,
        ),
      ),
      drawer: const MyDrawer(),
      body: widget.body,
      floatingActionButton: widget.fab,
    );
  }
}
