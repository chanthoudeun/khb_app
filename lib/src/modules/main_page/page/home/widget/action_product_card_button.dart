import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khb_app/core/utils/app_ext.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/widget/x_text_field.dart';
import '../../../../../../gen/assets.gen.dart';

class ActionProductCardButton extends StatelessWidget {
  final Function(int)? onIncreaseProductQty;
  final Function(int)? onMinusProductQty;
  final Function(int)? onChangeProductQty;
  int? productQty;

  ActionProductCardButton({
    super.key,
    this.onIncreaseProductQty,
    this.onChangeProductQty,
    this.onMinusProductQty,
    this.productQty,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (productQty != null &&
                productQty! >= 0 &&
                onMinusProductQty != null) {
              onMinusProductQty!(productQty!);
            }
          },
          child: IgnorePointer(
            ignoring: productQty == null ||
                productQty! <= 0, // Disable when productQty < 0
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: productQty == null || productQty! <= 0
                    ? Colors.grey
                    : AppColor.transparent,
                border: Border.all(
                  width: 1,
                  color: productQty == null || productQty! <= 0
                      ? Colors.grey
                      : AppColor.primary,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: productQty == null || productQty! <= 0
                    ? SvgPicture.asset(Assets.svg.minusWhirte)
                    : SvgPicture.asset(Assets.svg.minusIcon),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 1.5.d,
        ),
        Expanded(
          child: SizedBox(
            height: 30.h,
            child: XTextField(
              hintText: productQty.toString(),
              keyboardType: TextInputType.number,
              textController: TextEditingController.fromValue(
                TextEditingValue(
                  text: productQty.toString(),
                  selection: TextSelection.collapsed(
                      offset: productQty.toString().length),
                ),
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  int newValue = int.tryParse(value) ?? 0;
                  productQty = newValue;
                  if (onChangeProductQty != null) {
                    onChangeProductQty!(newValue);
                  }
                }
              },
            ),
          ),
        ),
        SizedBox(
          width: 1.5.d,
        ),
        GestureDetector(
          onTap: () {
            if (onIncreaseProductQty != null) {
              onIncreaseProductQty!(productQty ?? 0);
            }
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: SvgPicture.asset(Assets.svg.plusIcon),
            ),
          ),
        ),
      ],
    );
  }
}
