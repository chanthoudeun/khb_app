import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/utils/app_text.dart';
import 'package:khb_app/src/models/response/product_response/product.dart';
import 'package:khb_app/src/modules/main_page/page/home/widget/app_bar_action.dart';
import 'package:khb_app/src/modules/main_page/page/home/widget/product_card.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/widget/x_future_builder.dart';
import '../../../../../core/widget/x_network_image.dart';
import '../../../../../core/widget/x_paged_child_builder_delegate.dart';
import '../../../../../gen/assets.gen.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
  final state = Get
      .find<HomeLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Image.asset(
          Assets.image.group4.path,
          width: 120.0.d,
          height: 120.0.d,
        ),
        backgroundColor: AppColor.transparent,
        actions: [
          AppBarAction(),
        ],
      ),
      body: GetBuilder<HomeLogic>(builder: (logic) {
        return RefreshIndicator(
          onRefresh: () async {
            await logic.getBannerList();
            state.productPagingController.value.refresh();
          },
          child: XFutureBuilder(
            loadingWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: getBoxDecoration(),
                  height: 130
                    ..d,
                  padding: EdgeInsets.all(10
                    ..d),
                  margin: EdgeInsets.all(10
                    ..d),
                ).toShimmer,
              ],
            ),
            status: state.imageUrlListStatus.value,
            completeWidget: SingleChildScrollView(
              child: Column(
                children: [
                  _slider(context),
                  spaceV(),
                  _categoryTab(context),
                  spaceV(),
                  _productGride(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _productGride() {
    return SizedBox(
      height: Get.height,
      child: GetBuilder<HomeLogic>(
        assignId: true,
        builder: (logic) {
          return PagedGridView<int, Product>(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              pagingController: state.productPagingController.value,
              builderDelegate: XPagedChildBuilderDelegate.grid(
                  crossAxisCount: 2,
                  newPageProgressIndicatorBuilder: (context) =>
                  Container(
                    decoration: getBoxDecoration(),
                    height: 130
                      ..d,
                    padding: EdgeInsets.all(10
                      ..d),
                    margin: EdgeInsets.all(10
                      ..d),
                  ).toShimmer,
                  isNeedShowFullScreenNoItemsFoundIndicatorBuilder: true,
                  itemBuilder: (context, item, index) =>
                      Container(
                        child: ProductCard(
                          onFavorite: (isFavorite) =>
                              logic.onFavoriteProduct(index, isFavorite, item!),
                          isFavoriteProduct: item?.isFavorite ?? false,
                          onChangeProductQty: (qty) =>
                              logic.changeProductQty(
                                  index, qty,
                                  isInput: true, isIncrease: false),
                          onIncreaseProductQty: (qty) =>
                              logic.changeProductQty(
                                  index, qty,
                                  isInput: false, isIncrease: true),
                          onMinusProductQty: (qty) =>
                              logic.changeProductQty(
                                  index, qty,
                                  isInput: false, isIncrease: false),
                          productQty: item?.productQty ?? 0,
                          isPromotion: item?.promotionIds?.length != 0 ? 1 : 0,
                          price: item?.price ?? 0,
                          imageUrl: item?.logo ?? "",
                          // onDetailPage: item?.promotionIds?.length != 0
                          //     ? () => Get.toNamed(AppRoute.PRODUCTDETAIL, arguments: {
                          //           "productId": item?.id ?? 0,
                          //           "product": item,
                          //           "image_url": item?.logo ?? "",
                          //           "is_fovorite": item?.isFavorite ?? false,
                          //           "product_group":
                          //               item?.promotionIds?.isNotEmpty == true
                          //                   ? item!.productGroupIds ?? []
                          //                   : state.productGroupIds,
                          //           "price": item?.price ?? 0.0,
                          //           "locales": item?.locales,
                          //         })
                          //     : () {},
                          productName: item.name,
                          // productName: AppUtil.getNameByLocal(
                          //   item?.locales ?? ProLocales.Locales(),
                          // ),
                          onPress: () =>
                              logic.changeProductQty(index, 1,
                                  isInput: false, isIncrease: true),
                        ),
                      )),
              padding: EdgeInsets.all(10.0.d),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ));
        },
      ),
    );
  }

  Widget _categoryTab(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(horizontal: 15.0.d),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: (state.categoryList ?? []).length,
        itemBuilder: (BuildContext context, int index) {
          var item = state.categoryList?[index];
          return GestureDetector(
            onTap: () => logic.onChangeTab(index, item?.id ?? 0),
            child: Container(
              width: 110.0.d,
              height: 50.0.d,
              padding: EdgeInsets.symmetric(
                horizontal: 0.3.d,
                vertical: 0.1.d,
              ),
              margin: EdgeInsets.symmetric(horizontal: 3.0.d),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.mainBackground,
                    AppColor.mainBackground,
                    Color(0xfff0e9ea),
                    Color(0xffe7d7d6),
                    Color(0xffecccd6),
                    Color(0xffebc0cd),
                  ],
                ),
                color: state.tabIndex.value == index
                    ? const Color(0xffebc2cd)
                    : AppColor.transparent,
                border: Border.all(
                  width: 1,
                  color: AppColor.appBorder,
                ),
              ),
              child: index == 0
                  ? Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.2.d),
                    child: Text(
                      "ALL",
                      style: textDisplaySmall(
                          color: AppColor.primary,
                          fontWeight: FontWeight.w700),
                    )
                  // Image.asset(
                  //   Assets.image.group4.path,
                  //   fit: BoxFit.fitWidth,
                  // ),
                ),
              )
                  : Center(
                child: SizedBox(
                  width: 60.0.d,
                  child: XNetworkImage(
                    src: item?.icon ?? "",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _slider(BuildContext context) {
    return SizedBox(
      height: 180.0.d,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: state.bannerURL.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return SizedBox(
            width: Get.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.d),
              child: XNetworkImage(
                src: state.bannerURL[itemIndex],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2,
          autoPlayInterval: Duration(seconds: 8),
          autoPlayAnimationDuration: Duration(seconds: 3),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
