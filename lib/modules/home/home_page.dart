import 'package:flutter/material.dart';
import 'package:grupo_3_app/data/model/product.dart';
import 'package:grupo_3_app/modules/add_product/add_product_page.dart';
import 'package:grupo_3_app/modules/home/components/product_card.dart';
import 'package:grupo_3_app/shared/app_bar.dart';
import 'package:grupo_3_app/shared/drawer.dart';

import '../../shared/constants.dart';

class ProductsPage extends StatefulWidget {
  static const route = "products_page/";

  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size(width, 150 * height * figmaHeightRatio),
        child: MyAppBar(
          scaffoldKey: scaffoldKey,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 90 * width * figmaWidthRatio),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 80 * height * figmaHeightRatio,
            ),
            ProductCard(
                product: Product(
                    name: "Abacaxi",
                    dateExpired: DateTime(2023, 6, 22).millisecondsSinceEpoch,
                    dateIn: DateTime(2022, 12, 10).millisecondsSinceEpoch,
                    imageUrl:
                        "https://revistacampoenegocios.com.br/wp-content/uploads/2015/08/Foto-011-1.jpg",
                    qty: 3))
          ],
        ),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffEA981C),
        onPressed: () {
          Navigator.of(context).pushNamed(AddProductPage.route);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 112 * height * figmaHeightRatio,
        ),
      ),
    );
  }
}
