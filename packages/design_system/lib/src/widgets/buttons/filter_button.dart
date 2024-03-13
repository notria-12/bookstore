import 'package:design_system/src/foundations/tokens/color_tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterButton extends StatefulWidget {
  FilterButton({Key? key, required this.label, this.onTap}) : super(key: key);
  final String label;
  void Function()? onTap;
  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        width: 60,
        child: Center(child: Text(widget.label, style: TextStyle(color: ColorTokens.bgWhite),)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ColorTokens.secondary),
      ),
      onTap: () {},
    );
  }
}
