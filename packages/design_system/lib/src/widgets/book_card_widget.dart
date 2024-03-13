

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BookCardWidget extends StatelessWidget {
  const BookCardWidget(
      {Key? key,
      required this.image,
      required this.title,
      this.subtitle,
      required this.value})
      : super(key: key);

  final Widget image;
  final String title;
  final String? subtitle;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(child: image, height: 200, width: 100,),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeTokens.fontMedium),),
          Visibility(
            child: Text(subtitle!, style: TextStyle( fontSize: SizeTokens.fontSmall)),
            visible: subtitle != null,
          ),
          Text('R\$ ${value.toStringAsFixed(2).replaceAll('.', ',')}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeTokens.fontLarge))
        ]),
      ),
    );
  }
}
