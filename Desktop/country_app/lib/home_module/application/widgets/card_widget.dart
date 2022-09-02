import 'package:country_app/home_module/models/country.dart';
import 'package:country_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'button_card.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.countries}) : super(key: key);
  final  Country countries;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius: 10, color: Colors.black, offset: Offset(1, 3))
          ],
          color: AppColor.yellow,
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        width: 300,
        height: 100,
        child: Column(
          children: [
            Row(
              children: [
                const ButtonCard(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      children:  [
                        Text(countries.countryName??'',style: const TextStyle(fontSize: 20,),),
                        Text(countries.countryShortName??'',style:const TextStyle(fontSize: 10)),
                        Text(countries.countryPhoneCode.toString(),style: const TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
