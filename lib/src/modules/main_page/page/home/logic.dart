import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/app/logic.dart';
import 'package:khb_app/src/data/local/product_local.dart';
import 'package:khb_app/src/data/repo/category_repo.dart';
import 'package:khb_app/src/data/repo/product_repo.dart';
import 'package:khb_app/src/models/response/category_response/category_item.dart';
import 'package:khb_app/src/translation/app_locale.dart';

import '../../../../../core/utils/x_paging_data_handler.dart';
import '../../../../models/response/product_response/product.dart';
import 'state.dart';

class HomeLogic extends GetxController {
  final CategoryRepo _categoryRepo = Get.find<CategoryRepo>();
  final ProductRepo _productRepo = Get.find<ProductRepo>();
  final ProductLocal _productLocal = Get.find<ProductLocal>();
  final HomeState state = HomeState();
  final appLogic = Get.find<AppLogic>();
  final appState = Get.find<AppLogic>().state;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getBannerList();
    state.productPagingController.value.addPageRequestListener((pageNo) {
      getProductList(
        pageNo: pageNo,
      );
    });
    await getCategoryList();
  }

  void changeProductQty(
    int index,
    int productQty, {
    bool isIncrease = true,
    required Product item,
    bool isInput = false,
  }) {
    if (item != null) {
      //region calculate product qty
      if (isIncrease) {
        item.productQty = (item.productQty ?? 0) + 1;
      } else if (isInput) {
        item.productQty = productQty;
      } else {
        item.productQty = (item.productQty ?? 0) - 1;
      }
      appLogic.initTmpProduct(item);
      // initProductQty(state.productList![index]);
      update();
      appLogic.getTotalQuantityTmpProduct();
      // getTotalQuantity();
      update();
    }
  }

  void onChangeTab(int index, int categoryId) {
    state.tabIndex.value = index ?? 0;
    if (state.tabIndex.value == 0) {
      state.productCategoryId.value = 0;
    } else {
      state.productCategoryId.value = categoryId;
    }
    state.productPagingController.value.refresh();

    update();
  }

  Future<void> onFavoriteProduct(
      int index, bool isFavorite, Product item) async {
    // Ensure pagingController has the current list
    var pagingController = state.productPagingController.value;

    if (pagingController.itemList != null &&
        index < pagingController.itemList!.length) {
      // Toggle favorite state in UI (based on the PagingController's item list)
      pagingController.itemList![index].isFavorite = !isFavorite;

      // Get existing favorite list
      var favoriteList = await _productLocal.getFavoriteList() ?? [];

      if (!isFavorite) {
        // If marking as favorite, add to list if it doesn't exist
        if (!favoriteList.any((fav) => fav.id == item.id)) {
          item.productQty = 0; // Reset quantity when favorited
          favoriteList.add(item);
        }
      } else {
        // If un-favoriting, remove from list
        favoriteList.removeWhere((fav) => fav.id == item.id);
      }
      // Update local storage with the new favorite list
      await _productLocal.setFavoriteList(favoriteList);

      update();
    }
  }

  Future<void> getBannerList() async {
    state.imageUrlListStatus.value = RxStatus.loading();
    var result = await _categoryRepo
        .getBanner()
        .whenComplete(() => state.imageUrlListStatus.value = RxStatus.success())
        .onError((error, stackTrace) {
      state.imageUrlListStatus.value = RxStatus.error();
    });

    var resultString = (result?.data ?? [])
        .map<String>((e) => e?.icon ?? "") // Ensure it's a List<String>
        .where((filePath) => filePath.isNotEmpty)
        .toList();

    state.bannerURL.value.clear(); // Clear the list
    state.bannerURL.value.addAll(resultString); // Add the filtered result
    update();
  }

  Future<void> getCategoryList() async {
    try {
      state.screenStatus.value = RxStatus.loading();
      var result = await _categoryRepo
          .getCategoryList()
          .whenComplete(() => state.screenStatus.value = RxStatus.success())
          .onError((error, stackTrace) {
        state.screenStatus.value = RxStatus.error();
      });
      state.categoryList.value = [];
      state.categoryList?.insert(0, CategoryItem(name: "All", id: 0));
      state.categoryList?.addAll(result?.data ?? []);
      state.screenStatus.value = RxStatus.success();
      update();
    } catch (e) {
      EasyLoading.showError(AppLocale.error);
    }
  }

  getProductList({
    required int pageNo,
    bool isRefresh = false,
  }) async {
    await xPagingDataHandler(
      pagingController: state.productPagingController.value,
      function: _productRepo.getAll(
        pageNo: pageNo,
        displayGroupIds: state.productCategoryId.value,
        dealerId: Get.find<AppLogic>()
            .state
            .userResponse
            .value
            .user
            ?.employeeFirm
            ?.dealerId,
        outletId: Get.find<AppLogic>()
            .state
            .userResponse
            .value
            .user
            ?.employeeFirm
            ?.outletId,
      ),
      pageNo: pageNo,
      isRefresh: isRefresh,
      onComplete: (data) async {
        if (data != null && data.data != null) {
          var favoriteList = await _productLocal.getFavoriteList();
          for (var product in data.data!) {
            if (favoriteList!.any((fav) => fav.id == product.id)) {
              product.isFavorite = true;
              product.productQty = 0;
            }
          }
        }
        data?.data?.removeWhere((element) => element.id == 85);
        update();
        return data;
      },
    );
  }
}
