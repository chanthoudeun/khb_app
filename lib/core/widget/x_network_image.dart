import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../flavors.dart';
import '../../gen/assets.gen.dart';
import '../utils/app_color.dart';
import '../utils/app_ext.dart';
import '../utils/app_style.dart';

class XNetworkImage extends StatelessWidget {
  String src;
  BoxFit? fit;
  double? height;
  double? width;
  String loadingDescription;
  String? errorDescription;
  double? errorIconSize;
  double? errorFontSize;
  bool isNeedErrorDesc;
  bool isNeedPadding;
  Widget? errorWidget;

  XNetworkImage({
    super.key,
    required this.src,
    this.fit,
    this.errorWidget,
    this.height,
    this.width,
    this.loadingDescription = "",
    this.errorDescription,
    this.errorIconSize,
    this.errorFontSize,
    this.isNeedErrorDesc = true,
    this.isNeedPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: CachedNetworkImage(
        imageUrl: src,
        fit: fit ?? BoxFit.fitWidth,
        height: height,
        width: width,
        memCacheHeight: height?.toInt(),
        memCacheWidth: width?.toInt(),
        // cacheManager: DefaultCacheManager(),
        errorWidget: (_, __, ___) => Padding(
            padding: isNeedPadding ? EdgeInsets.all(10.0.d) : EdgeInsets.zero,
            child: errorWidget ?? Text("No Image")
            // SvgPicture.asset(
            //   Assets.svg.noImage,
            //   height: errorIconSize,
            //   fit: BoxFit.contain,
            // ),
            ),
        progressIndicatorBuilder: (context, url, progress) {
          double? progressValue = progress.progress;
          return Stack(
            children: [
              // Static shimmer effect
              Container(
                height: height,
                width: width,
                decoration: getBoxDecoration(background: Colors.red),
              ).toShimmer,

              // Display progress bar only when progress is available
              if (progressValue != null)
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.all(10.0.d),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: LinearProgressIndicator(
                        value: progressValue,
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(10..d),
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        minHeight:
                            4.0.d, // Reduced height for smoother transition
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
