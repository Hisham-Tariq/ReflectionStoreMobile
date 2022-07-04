/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/carousal_1.png
  AssetGenImage get carousal1 =>
      const AssetGenImage('assets/images/carousal_1.png');

  /// File path: assets/images/glasses1.png
  AssetGenImage get glasses1 =>
      const AssetGenImage('assets/images/glasses1.png');

  /// File path: assets/images/nofound.png
  AssetGenImage get nofound => const AssetGenImage('assets/images/nofound.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Arrow - Left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/svg/Arrow - Left.svg');

  /// File path: assets/svg/Delete.svg
  SvgGenImage get delete => const SvgGenImage('assets/svg/Delete.svg');

  /// File path: assets/svg/Filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/svg/Filter.svg');

  /// File path: assets/svg/done.svg
  SvgGenImage get done => const SvgGenImage('assets/svg/done.svg');

  /// File path: assets/svg/favourite.svg
  SvgGenImage get favourite => const SvgGenImage('assets/svg/favourite.svg');

  /// File path: assets/svg/favourites.svg
  SvgGenImage get favourites => const SvgGenImage('assets/svg/favourites.svg');

  /// File path: assets/svg/forgot_password.svg
  SvgGenImage get forgotPassword =>
      const SvgGenImage('assets/svg/forgot_password.svg');

  /// File path: assets/svg/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/svg/logo.svg');

  /// File path: assets/svg/noFound.svg
  SvgGenImage get noFound => const SvgGenImage('assets/svg/noFound.svg');

  /// File path: assets/svg/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/svg/notification.svg');

  /// File path: assets/svg/order_confirmed.svg
  SvgGenImage get orderConfirmed =>
      const SvgGenImage('assets/svg/order_confirmed.svg');

  /// File path: assets/svg/product_tour.svg
  SvgGenImage get productTour =>
      const SvgGenImage('assets/svg/product_tour.svg');

  /// File path: assets/svg/search.svg
  SvgGenImage get search => const SvgGenImage('assets/svg/search.svg');

  /// File path: assets/svg/shopping.svg
  SvgGenImage get shopping => const SvgGenImage('assets/svg/shopping.svg');

  /// File path: assets/svg/star.svg
  SvgGenImage get star => const SvgGenImage('assets/svg/star.svg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
