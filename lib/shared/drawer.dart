import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grupo_3_app/assets/assets.dart';

import 'constants.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xff97C879),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Text("P"),
                    ),
                    SizedBox(
                      width: 30 * width * figmaWidthRatio,
                    ),
                    Text(
                      "Paulo Alvim",
                      style:
                          TextStyle(fontSize: 46 * height * figmaHeightRatio),
                    )
                  ],
                )),
            SizedBox(
              height: 40 * height * figmaHeightRatio,
            ),
            Padding(
              padding: EdgeInsets.only(left: 70 * width * figmaWidthRatio),
              child: Row(children: [
                SvgPicture.asset(Assets.produtos,
                    height: 50 * height * figmaHeightRatio,
                    width: 50 * height * figmaHeightRatio,
                    color: const Color(0xff878282)),
                SizedBox(
                  width: 22 * width * figmaWidthRatio,
                ),
                const Text(
                  "Produtos",
                  style: TextStyle(fontSize: 26, color: Color(0xff878282)),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
