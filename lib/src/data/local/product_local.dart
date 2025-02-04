import 'package:hive_flutter/hive_flutter.dart';
import 'package:khb_app/core/utils/app_log.dart';

import '../../../core/local_config/hive_manager.dart';
import '../../../core/local_config/storage_key.dart';
import '../../models/response/product_response/product.dart';

class ProductLocal {
  Future<Box<List>> getFavoriteBox() async {
    if (!Hive.isBoxOpen(StorageKey.favoriteProductBox)) {
      return await Hive.openBox<List>(StorageKey.favoriteProductBox);
    }
    return Hive.box<List>(StorageKey.favoriteProductBox);
  }

  Future<void> setFavoriteList(List<Product> productList) async {
    final box = await getFavoriteBox();
    await box.put(StorageKey.favoriteProductData, productList);
  }

  Future<List<Product>?> clearFavoriteList() async {
    await HiveManager.removeFavoriteAllProduct();
    getFavoriteList();
  }

  Future<void> removeFavoriteById(int id) async {
    final box = await getFavoriteBox();

    List<Product>? items = await getFavoriteList();

    // Remove the item with the specified id
    items?.removeWhere((item) => item.id == id);
    List<Product> products = items!.map((item) {
      return item;
    }).toList();
    // Save the updated list back to the box
    await box.put(StorageKey.favoriteProductData, products);
  }

  Future<List<Product>?> getFavoriteList() async {
    try {
      final box = await getFavoriteBox();
      final List<dynamic>? productList = box.get(
        StorageKey.favoriteProductData,
        defaultValue: [],
      );

      if (productList != null) {
        List<Product> products = productList.map((item) {
          if (item is Product) {
            return item;
          } else if (item is Map<String, dynamic>) {
            return Product.fromJson(item);
          } else {
            throw const FormatException("Unexpected format in product list");
          }
        }).toList();
        return products;
      } else {
        return null;
      }
    } catch (e) {
      xLog(message: "Error fetching product list: $e");
      return null;
    }
  }
}
