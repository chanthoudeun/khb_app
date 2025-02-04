// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khb_app/core/utils/app_ext.dart';

import '../../gen/assets.gen.dart';
import '../../src/translation/app_locale.dart';
import '../utils/app_style.dart';
import '../utils/app_text.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.all(30..d),
        margin: EdgeInsets.only(top: 50..d),
        child: Column(
          children: [
            Container(
              height: 100..d,
              width: double.infinity,
              decoration: getBoxDecoration(
                background: Colors.white,
                hasShadow: true,
                borderRadius: BorderRadius.circular(20..d),
              ),
              child: Row(children: [
                // Padding(
                //   padding: EdgeInsets.all(10..d),
                //   child: Image.asset(
                //     Assets.gif.noInternet.path,
                //     width: 60..d,
                //   ),
                // ),
                spaceH(),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocale.noInternetConnection.tr,
                        style: textDisplaySmall(fontWeight: FontWeight.bold),
                      ),
                      spaceV(),
                      Text(
                        AppLocale.noInternetConnectionDesc.tr,
                        style: textDisplaySmall(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
