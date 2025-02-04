import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:photo_view/photo_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../src/translation/app_locale.dart';
import '../utils/app_color.dart';
import '../utils/app_ext.dart';
import '../utils/app_style.dart';
import '../utils/app_text.dart';
import 'x_button.dart';
import 'x_loading.dart';

Future<void> openImageView(
  BuildContext context, {
  String? url, // use
  String? filePath, //use
  String? fileAsset, // use
  Uint8List? byteImage,
  List<String>? urlList, //use
  List<String>? filePathList,
  List<Uint8List>? byteImageList,
  bool isHaveAction = false, //use
  bool isShowList = false, //use
  Function()? actionPress, //use
  String? actionText, //use
  String? title, //use
}) {
  return showMaterialModalBottomSheet(
      context: context,
      enableDrag: true,
      isDismissible: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20..d),
        topRight: Radius.circular(20..d),
      )),
      builder: (context) => Container(
            height: Get.height * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0.d),
                topLeft: Radius.circular(20.0.d),
              ),
              child: ImageViewWidget(
                byteImage: byteImage,
                filePath: filePath,
                isHaveAction: isHaveAction,
                url: url,
                actionPress: actionPress,
                actionText: actionText,
                byteImageList: byteImageList,
                filePathList: filePathList,
                urlList: urlList,
                isShowList: isShowList,
                title: title,
                fileAsset: fileAsset,
              ),
            ),
          ));
}

class ImageViewWidget extends StatefulWidget {
  Uint8List? byteImage;
  String? filePath;
  String? fileAsset;
  String? url;
  bool? isHaveAction;
  bool? isShowList;
  Function()? actionPress;
  String? actionText;
  List<String>? urlList;
  List<String>? filePathList;
  List<Uint8List>? byteImageList;
  String? title;

  ImageViewWidget({
    super.key,
    this.byteImage,
    this.filePath,
    this.url,
    this.isHaveAction,
    this.isShowList,
    this.actionPress,
    this.actionText,
    this.urlList,
    this.filePathList,
    this.byteImageList,
    this.title,
    this.fileAsset,
  });

  @override
  State<ImageViewWidget> createState() => _ImageViewWidgetState();
}

class _ImageViewWidgetState extends State<ImageViewWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isShowList == false) {
      // Single image display logic remains unchanged
      ImageProvider imageProvider;
      if (widget.byteImage != null) {
        imageProvider = MemoryImage(widget.byteImage!);
      } else if (widget.filePath != null) {
        imageProvider = FileImage(File(widget.filePath!));
      } else if (widget.fileAsset != null) {
        imageProvider = AssetImage(widget.fileAsset!);
      } else {
        imageProvider = NetworkImage(widget.url ?? "");
      }
      return Dismissible(
          direction: DismissDirection.none,
          key: UniqueKey(),
          onDismissed: (_) => Get.back(),
          child: Container(
              color: Colors.white,
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                    padding: EdgeInsets.all(10.0.d),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0.d),
                      child: PhotoViewGestureDetectorScope(
                          axis: Axis.horizontal,
                          child: PhotoView(
                              disableGestures: false,
                              enablePanAlways: true,
                              enableRotation: false,
                              strictScale: false,
                              tightMode: true,
                              imageProvider: imageProvider,
                              backgroundDecoration:
                                  const BoxDecoration(color: Colors.white),
                              loadingBuilder: (context, event) =>
                                  const Center(child: xLoading()),
                              minScale: PhotoViewComputedScale.contained * 0.5,
                              maxScale: PhotoViewComputedScale.covered * 10)),
                    )),
                Positioned(
                    top: 20.0.d,
                    right: 10.0.d,
                    child: IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(Icons.close,
                            color: AppColor.primary,
                            size: 30.0.d,
                            shadows: const [
                              BoxShadow(color: Colors.black, spreadRadius: 2)
                            ]))),
                Positioned(
                    top: 30.0.d,
                    left: 20.0.d,
                    child: SizedBox(
                      width: Get.width * 0.8,
                      child: Text(widget.title ?? "",
                          // ?? AppLocale.image.tr,
                          style: textDisplaySmall(color: AppColor.primary)),
                    )),
                if (widget.isHaveAction == true)
                  Positioned(
                    bottom: 20.0.d,
                    child: XButton(
                      onPress: widget.actionPress,
                      toolTip: widget.actionText,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: getBoxDecoration(
                                  background: AppColor.primary),
                              width: Get.width * 0.9,
                              padding: EdgeInsets.all(10.0.d),
                              child: Center(
                                  child: Text(widget.actionText ?? "",
                                      style: textDisplaySmall(
                                          color: Colors.white))))
                        ],
                      ),
                    ),
                  )
              ])));
    } else {
      // Display a list of images using PageView
      List<Widget> imagePages = [];

      if (widget.byteImageList != null) {
        imagePages = widget.byteImageList!
            .map((image) => _buildPageViewImage(MemoryImage(image)))
            .toList();
      } else if (widget.filePathList != null) {
        imagePages = widget.filePathList!
            .map((filePath) => _buildPageViewImage(FileImage(File(filePath))))
            .toList();
      } else if (widget.urlList != null) {
        imagePages = widget.urlList!
            .map((url) => _buildPageViewImage(NetworkImage(url)))
            .toList();
      }

      return Dismissible(
          direction: DismissDirection.none,
          key: UniqueKey(),
          onDismissed: (_) => Get.back(),
          child: Container(
              color: Colors.white,
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0.d),
                    child: PageView(
                      controller: _pageController,
                      children: imagePages,
                    )),
                Positioned(
                    top: 20.0.d,
                    right: 10.0.d,
                    child: IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(Icons.close,
                            color: AppColor.primary,
                            size: 30.0.d,
                            shadows: const [
                              BoxShadow(color: Colors.black, spreadRadius: 2)
                            ]))),
                Positioned(
                    top: 30.0.d,
                    left: 20.0.d,
                    child: Text(AppLocale.image.tr,
                        style: textDisplayMedium(color: AppColor.primary))),
                Positioned(
                  bottom: 50.0.d,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: imagePages.length,
                    effect: ScrollingDotsEffect(
                      dotWidth: 8.0,
                      dotHeight: 8.0,
                      activeDotColor: AppColor.primary,
                      dotColor: Colors.grey,
                    ),
                  ),
                ),
                if (widget.isHaveAction == true)
                  Positioned(
                      bottom: 20.0.d,
                      child: XButton(
                          onPress: widget.actionPress,
                          toolTip: widget.actionText,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    decoration: getBoxDecoration(
                                        background: AppColor.primary),
                                    width: Get.width * 0.9,
                                    padding: EdgeInsets.all(10.0.d),
                                    child: Center(
                                        child: Text(widget.actionText ?? "",
                                            style: textDisplaySmall(
                                                color: Colors.white))))
                              ])))
              ])));
    }
  }

  Widget _buildPageViewImage(ImageProvider imageProvider) {
    return Padding(
      padding: EdgeInsets.all(10.0.d),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0.d),
        child: PhotoViewGestureDetectorScope(
          axis: Axis.horizontal,
          child: PhotoView(
            disableGestures: false,
            enablePanAlways: true,
            enableRotation: false,
            strictScale: false,
            tightMode: true,
            imageProvider: imageProvider,
            backgroundDecoration: const BoxDecoration(color: Colors.white),
            loadingBuilder: (context, event) => const Center(child: xLoading()),
            minScale: PhotoViewComputedScale.contained * 0.5,
            maxScale: PhotoViewComputedScale.covered * 10,
          ),
        ),
      ),
    );
  }
}
