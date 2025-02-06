import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:khb_app/core/utils/app_ext.dart';
import 'package:khb_app/core/widget/text_field_decoration.dart';

class XDropDownSearch<T> extends StatelessWidget {
  final List<T> items;
  final T? selectedItem;
  final ValueChanged<T?>? onChanged;
  final String label;
  final String Function(T)? itemAsString; // Add itemAsString

  const XDropDownSearch({
    super.key,
    required this.items,
    this.selectedItem,
    this.onChanged,
    required this.label,
    this.itemAsString, // Initialize itemAsString
  });

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      items: items,
      selectedItem: selectedItem,
      itemAsString: itemAsString,

      // Use itemAsString for display
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: getTextFieldDecoration(
          hintText: label,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
