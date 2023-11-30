import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task1_rout/fetures/products/ui/view/widgets/loading_widget.dart';

import '../../../../core/utilis/app_assets.dart';
import '../../../../core/utilis/app_color.dart';
import '../../data/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: MediaQuery.of(context).size.width * .4,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                imageUrl: product.thumbnail!, // Using thumbnail as the main image
                placeholder: (_, __) => LoadingWidget(),
                errorWidget: (_, __, ___) => Icon(Icons.error),
                width: double.infinity,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * .15,
              ),
              Image.asset(
                AppAssets.iconFav,
              )
            ],
          ),
          Spacer(),
          Text(
            product.title!,
            textAlign: TextAlign.start,
            maxLines: 2,
            style: TextStyle(height: 1),
          ),
          Spacer(),
          Row(
            children: [
              Text("Review(${product.rating})"),
              Icon(
                Icons.star,
                color: Colors.amberAccent,
              ),
            ],
          ),
          Row(
            children: [
              Text("EGP ${product.price}"),
              Spacer(),
              SizedBox(
                width: 30,
                height: 30,
                child: FloatingActionButton(
                  backgroundColor: AppColors.primaryColor,
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
