import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_style.dart';
import 'package:khb_app/core/utils/app_text.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/widget/x_network_image.dart';
import '../../../../../../gen/assets.gen.dart';
import 'action_product_card_button.dart';

class ProductCard extends StatelessWidget {
  String imageUrl;
  String? productName;
  int productQty;
  final bool? isFavoriteProduct;
  final int? isPromotion;
  final bool? isGridCard;
  final bool? isLandingPage;
  void Function()? onPress;
  void Function()? onDetailPage;
  final Function(int)? onIncreaseProductQty;
  final Function(int)? onChangeProductQty;
  final Function(int)? onMinusProductQty;
  final Function(bool)? onFavorite;
  double? price;
  String? description;

  ProductCard({
    super.key,
    this.productQty = 0,
    this.description,
    this.onFavorite,
    this.isPromotion = 0,
    required this.imageUrl,
    this.isGridCard = true,
    this.isLandingPage = false,
    this.isFavoriteProduct = false,
    this.price,
    this.onPress,
    this.onDetailPage,
    this.productName,
    this.onChangeProductQty,
    this.onIncreaseProductQty,
    this.onMinusProductQty,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDetailPage,
      child: _productGridCard(context),
    );
  }

  Widget _productGridCard(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: getBoxDecoration(
            hasShadow: true,
            borderRadius: BorderRadius.circular(15.0.d),
          ),
          padding: EdgeInsets.symmetric(horizontal: 5.0.d, vertical: 5.0.d),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: XNetworkImage(
                    src: imageUrl ?? "",
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 1.0.d),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${productName}",
                        style: textDisplaySmall(),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Builder(builder: (context) {
                    if (productQty != 0) {
                      return ActionProductCardButton(
                        onChangeProductQty: onChangeProductQty,
                        onIncreaseProductQty: onIncreaseProductQty,
                        onMinusProductQty: onMinusProductQty,
                        productQty: productQty ?? 0,
                      );
                    } else {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: isLandingPage == true
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.spaceBetween,
                        children: [
                          if (isLandingPage != true && productQty == 0) ...[
                            Text(
                              "${"\$"} ${price?.toStringAsFixed(2)}",
                              style: textDisplaySmall(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                          if (productQty == 0) ...[
                            GestureDetector(
                              onTap: onPress,
                              child: Container(
                                width: 30.0.d,
                                height: 30.0.d,
                                decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(30.0.d),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 40.0.d,
                                    child:
                                        SvgPicture.asset(Assets.svg.plusIcon),
                                  ),
                                ),
                              ),
                            ),
                          ]
                        ],
                      );
                    }
                  })),
            ],
          ),
        ),
        if (isPromotion == 1) ...[
          Positioned(
            left: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
              child: SizedBox(
                width: 60.0.d,
                child: Image.asset(
                  Assets.image.promotionRibbon.path,
                ),
              ),
            ),
          ),
        ],
        Positioned(
          right: 1.0.d,
          top: 10,
          child: GestureDetector(
            onTap: () {
              if (onFavorite != null) {
                onFavorite!(isFavoriteProduct ?? false);
              }
            },
            child: isFavoriteProduct == true
                ? SvgPicture.asset(Assets.svg.favoriteBold)
                : SvgPicture.asset(
                    Assets.svg.favoriteIcon,
                  ),
          ),
        ),
      ],
    );
  }

// Widget _productGridCard(BuildContext context) {
//   return GestureDetector(
//     onTap: onDetailPage,
//     child: Column(
//       children: [
//         AppStyle.spacingVSmaller,
//         Stack(
//           children: [
//             SizedBox(
//               height: 90.h,
//               width: double.infinity,
//               child: XNetworkImage(
//                 imageUrl,
//                 autoCache: true,
//               ),
//             ),
//             if (isLandingPage != true) ...[
//               Positioned(
//                 right: 0,
//                 top: 0,
//                 child: GestureDetector(
//                   onTap: () {
//                     if (onFavorite != null) {
//                       onFavorite!(isFavoriteProduct ?? false);
//                     }
//                   },
//                   child: isFavoriteProduct == true
//                       ? Image.asset(Assets.image.favoriteBoldIcon.path)
//                       : Image.asset(Assets.image.favorite.path),
//                 ),
//               ),
//             ]
//           ],
//         ),
//         AppStyle.spacingVSmaller,
//         SizedBox(
//           height: 4.5.d,
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               productName ?? "",
//               style: AppStyle.titleSmall(
//                 context,
//                 fontSize: AppStyle.fontSizeNormal,
//                 fontWeight: FontWeight.normal,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ),
//         if (productQty != 0) ...[
//           AppStyle.spacingVSmaller,
//           ActionProductCardButton(
//             onChangeProductQty: onChangeProductQty,
//             onIncreaseProductQty: onIncreaseProductQty,
//             onMinusProductQty: onMinusProductQty,
//             productQty: productQty,
//           ),
//         ] else ...[
//           AppStyle.spacingVSmall,
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: isLandingPage == true
//                 ? MainAxisAlignment.end
//                 : MainAxisAlignment.spaceBetween,
//             children: [
//               if (isLandingPage != true && productQty == 0) ...[
//                 Text(
//                   "${"\$"} ${price}",
//                   style: AppStyle.titleSmall(
//                     context,
//                     fontSize: AppStyle.fontSizeBigger,
//                   ),
//                 ),
//               ],
//               if (productQty == 0) ...[
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: GestureDetector(
//                     onTap: onPress,
//                     child: Container(
//                       width: 30,
//                       height: 30,
//                       decoration: BoxDecoration(
//                         color: AppColor.primary,
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Center(
//                         child: Image.asset(Assets.image.plusIcon.path),
//                       ),
//                     ),
//                   ),
//                 ),
//               ]
//             ],
//           ),
//         ],
//         AppStyle.spacingVSmaller,
//       ],
//     ),
//   );
// }
}

class LeftClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width / 2, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
