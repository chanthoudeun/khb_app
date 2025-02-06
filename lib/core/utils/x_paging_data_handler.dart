import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../network_config/paging.dart';

Future<void> xPagingDataHandler<PageKeyType, ItemType>({
  required PagingController<PageKeyType, ItemType> pagingController,
  required Future<Paging<ItemType>?> function,
  required bool isRefresh,
  required int pageNo,
  int pageSize = 10, // Default page size
  int? needPage,
  Function()? functionHandleIsRefresh1,
  Future<Paging<ItemType>?> Function(Paging<ItemType>?)? onComplete,
}) async {
  try {
    // Handle refresh case
    if (isRefresh) {
      pagingController.refresh();
      functionHandleIsRefresh1?.call();
      pageNo = 1; // Reset page number on refresh
    }

    // Fetch new items with error handling
    var newItems = await function.onError(
      (error, stackTrace) {
        pagingController.error = error;
      },
    );

    if (newItems == null || newItems.data == null) {
      pagingController.appendLastPage([]);
      return;
    }

    // 🔹 Call `onComplete` function if provided
    if (onComplete != null) {
      newItems = await onComplete(newItems);
    }

    // Extract metadata values
    int totalItems = newItems?.metadata?.total ?? 0;
    int limit = newItems?.metadata?.limit ?? pageSize;
    int loadedItemsCount = pagingController.itemList?.length ?? 0;
    List<ItemType> newData = newItems?.data ?? [];

    // 🔹 Compute offset manually
    int offset = (pageNo - 1) * limit; // Simulating offset

    // Determine if this is the last page
    bool isLastPage = (offset + limit) >= totalItems ||
        loadedItemsCount + newData.length >= totalItems;

    if (needPage == null || pageNo <= needPage) {
      if (isLastPage) {
        pagingController.appendLastPage(newData);
      } else {
        pagingController.appendPage(newData, (pageNo + 1) as PageKeyType?);
      }
    } else {
      pagingController.appendLastPage([]);
    }
  } catch (error) {
    pagingController.error = error;
  }
}
