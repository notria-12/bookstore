import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          BannerWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FilterButton(
                  label: 'Todos',
                )
              ],
            ),
          ),
          GridView.count(shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeTokens.paddingMedium),
                child: BookCardWidget(
                  image: Image.asset('assets/images/book.jpeg'),
                  title: 'Maturidade Luciano Subirá',
                  value: 28.90,
                  subtitle: 'O acesso a Herança Plena',
                ),
              ),
            ),
          )
        ],
      )),
      appBar: AppBarWidget(),
    );
  }
}
