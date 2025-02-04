import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:khb_app/src/models/response/category_response/category_item.dart';
import 'package:khb_app/src/models/response/product_response/product.dart';

class HomeState {
  var imageUrlListStatus = RxStatus.loading().obs;
  var screenStatus = RxStatus.loading().obs;
  var bannerURL = <String>[].obs;
  var categoryList = <CategoryItem>[].obs;
  var productPagingController =
      PagingController<int, Product>(firstPageKey: 1).obs;

  var tmpProductList = <Product>[].obs;

  var productList = <Product>[].obs;

  var tabIndex = 0.obs;

  var productCategoryId = 0.obs;
}
