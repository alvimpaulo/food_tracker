import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:grupo_3_app/data/model/product.dart';
import 'package:grupo_3_app/shared/constants.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: 200 * height * figmaHeightRatio,
      decoration: BoxDecoration(
          color: const Color(0xffFFFDE8),
          border: Border.all(color: Colors.black, width: 1)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 40 * width * figmaWidthRatio,
            vertical: 40 * height * figmaHeightRatio),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              widget.product.imageUrl,
              height: 120 * height * figmaHeightRatio,
              width: 120 * width * figmaWidthRatio,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  widget.product.name,
                  style: const TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.input,
                      color: Colors.green,
                    ),
                    AutoSizeText(
                      widget.product.getFormattedDateIn(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  widget.product.getFormattedDateExpired(),
                  style: const TextStyle(color: Color(0xff763434)),
                ),
                AutoSizeText(
                  widget.product.qty.toString(),
                  style: const TextStyle(fontSize: 22,
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
