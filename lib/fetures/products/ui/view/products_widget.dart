import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_rout/fetures/products/ui/view/widgets/loading_widget.dart';
import '../../../../core/utilis/app_assets.dart';
import '../../../../core/utilis/app_color.dart';
import '../../data/models/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: AppColors.lightBlue),
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: product.thumbnail, // Using thumbnail as the main image
                      placeholder: (context, url) => LoadingWidget(),
                      errorWidget: (context, url, error) =>  Icon(Icons.error),
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 128.h,
                    ),
                    Positioned(
                      top: 3.h,
                      right: 3.w,
                      child: InkWell(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: ShapeDecoration(
                            color: AppColors.whiteColor,
                            shape: const OvalBorder(),
                          ),
                          child: Center(
                            child: ImageIcon(
                              AssetImage(AppAssets.iconFav),color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 100,maxHeight: 30
                          ),
                          child: Text(product.title??"",

                            style: TextStyle(fontSize: 14,color: AppColors.primaryColor),),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'EGP ${product.price}',
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(width: 16,),
                            Text(
                                '${product.price}',
                                style:TextStyle(decoration: TextDecoration.lineThrough,fontSize: 12,color: Color(0xff004182) )
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 5,),
                            Text(
                              "Review(${product.rating})",style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 3,),
                            Image.asset(
                              AppAssets.iconStar,
                              height: 15.h,
                              width: 15.w,
                            ),
                            const Spacer(
                              flex: 4,
                            ),
                            ImageIcon(
                              const AssetImage(AppAssets.iconAdd),
                              size: 33.sp,
                              color: AppColors.primaryColor,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ]),
                )
              ],
            ),

          ),
        ),
      ],
    );
  }
}

