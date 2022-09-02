import 'package:country_app/home_module/application/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../infreestructure/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.provider}) : super(key: key);
  final HomeProvider provider;

  @override
  Widget build(BuildContext context) {
    provider.loadCountries();
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: provider.cousntries.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardWidget(
                countries: provider.cousntries[i],
              ),
            );
          },
        ));
  }
}
