
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.search,),border: InputBorder.none, hintText: 'Procure seu livro...'));
  }
}