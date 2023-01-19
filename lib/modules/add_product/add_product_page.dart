import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grupo_3_app/assets/assets.dart';
import 'package:grupo_3_app/shared/app_bar.dart';
import 'package:grupo_3_app/shared/constants.dart';
import 'package:grupo_3_app/shared/drawer.dart';

class AddProductPage extends StatefulWidget {
  static const route = "add_product_page/";

  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 200 * height * figmaHeightRatio),
        child: MyAppBar(
          scaffoldKey: scaffoldKey,
        ),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Container(
          height: 805 * height * figmaHeightRatio,
          width: 805 * height * figmaHeightRatio,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: const Color(0xffEA981C),

                  width: 10 * height * figmaHeightRatio)),
          child: Column(
            children: [
              const AutoSizeText(
                "Clique aqui para inserir a foto do produto",
                style: TextStyle(fontSize: 32, color: Color(0xffEA981C)),
              ),
              SvgPicture.asset(
                Assets.cameraAdd,
                color: const Color(0xffEA981C),
                height: 380 * height * figmaHeightRatio,
              )
            ],
          ),
        ),
      ),
    );
  }
}
