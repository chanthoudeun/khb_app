import '../../src/models/response/notification_response/app_notification.dart';
import '../../src/models/response/product_response/product.dart';
import '../../src/models/response/purchase_order_response/purchase_order_item.dart';

class Paging<T> {
  List<T>? data;
  Metadata? metadata;

  Paging({
    this.data,
    this.metadata,
  });

  @override
  String toString() {
    return 'Paging{data: $data, metadata: $metadata}';
  }

  factory Paging.fromMap(Map<String, dynamic> data, {required Type type}) {
    return Paging(
      data: (data['data'] as List<dynamic>)
          .map<T>((e) => factoryDataList(type, e))
          .toList(),
      metadata: Metadata.fromMap(data['metadata'] ?? {}),
    );
  }

  static final _dataFactory = <Type, dynamic Function(Map<String, dynamic>)>{
    Product: Product.fromJson,
    PurchaseOrderItem: PurchaseOrderItem.fromJson,
    AppNotification: AppNotification.fromJson,
  };

  static factoryDataList(Type type, data) {
    if (data is String || data is num || data is bool) {
      return data;
    }
    return _dataFactory[type]?.call(data);
  }
}

class Metadata {
  int? total;
  int? limit;
  int? offset;

  Metadata({
    this.total,
    this.limit,
    this.offset,
  });

  @override
  String toString() {
    return 'Metadata{total: $total, limit: $limit, offset: $offset}';
  }

  factory Metadata.fromMap(Map<String, dynamic> data) {
    return Metadata(
      total: data['total'] as int?,
      limit: data['limit'] as int?,
      offset: data['offset'] as int?,
    );
  }
}
