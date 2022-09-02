import 'package:country_app/home_module/services/token_services.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../services/country_services.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                color: Colors.black,
                offset: Offset(1, 3))
          ],
          color: AppColor.yellow,
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        height: 70,
        width: 80,
        child: InkWell(
          child: const Center(
            child: Text(
              'Go',
              style: TextStyle(fontSize: 30),
            ),
          ),
          onTap:(){}

        ),
      ),
    );
  }
}
