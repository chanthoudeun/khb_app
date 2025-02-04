/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/CB_SUPREME.png
  AssetGenImage get cbSupreme =>
      const AssetGenImage('assets/image/CB_SUPREME.png');

  /// File path: assets/image/Group4.png
  AssetGenImage get group4 => const AssetGenImage('assets/image/Group4.png');

  /// File path: assets/image/Group_2367.png
  AssetGenImage get group2367 =>
      const AssetGenImage('assets/image/Group_2367.png');

  /// File path: assets/image/promotion_ribbon.png
  AssetGenImage get promotionRibbon =>
      const AssetGenImage('assets/image/promotion_ribbon.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cbSupreme, group4, group2367, promotionRibbon];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Favorite-Bold.svg
  String get favoriteBold => 'assets/svg/Favorite-Bold.svg';

  /// File path: assets/svg/Favorite-Icon.svg
  String get favoriteIcon => 'assets/svg/Favorite-Icon.svg';

  /// File path: assets/svg/Minus-Whirte.svg
  String get minusWhirte => 'assets/svg/Minus-Whirte.svg';

  /// File path: assets/svg/Plus-Icon.svg
  String get plusIcon => 'assets/svg/Plus-Icon.svg';

  /// File path: assets/svg/empty_data.svg
  String get emptyData => 'assets/svg/empty_data.svg';

  /// File path: assets/svg/minus_icon.svg
  String get minusIcon => 'assets/svg/minus_icon.svg';

  /// File path: assets/svg/notification.svg
  String get notification => 'assets/svg/notification.svg';

  /// File path: assets/svg/shopping_cart.svg
  String get shoppingCart => 'assets/svg/shopping_cart.svg';

  /// List of all assets
  List<String> get values => [
        favoriteBold,
        favoriteIcon,
        minusWhirte,
        plusIcon,
        emptyData,
        minusIcon,
        notification,
        shoppingCart
      ];
}

class Assets {
  Assets._();

  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
