import 'package:design_system/design_system.dart';
import 'package:design_system/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.maxFinite,
      color: ColorTokens.bgGrey,
      child: Row(
        children:  [
          Image.asset(
            'assets/images/logo.jpeg',
            package: packageName,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
