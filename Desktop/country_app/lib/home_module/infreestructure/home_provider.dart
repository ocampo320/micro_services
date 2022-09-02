import 'package:country_app/home_module/models/country.dart';
import 'package:flutter/material.dart';

import '../services/country_services.dart';
import '../services/token_services.dart';

class HomeProvider extends ChangeNotifier{

  List<Country> _cousntries=[];

  List<Country> get cousntries => _cousntries;

  set cousntries(List<Country> value) {
    _cousntries = value;
    notifyListeners();
  }

  void loadCountries(){
    TokenServices.getToken().then((value) {
      CountryServices.getCountries(value.authToken!).then((value){
        cousntries=value;
        notifyListeners();
      });
    });
  }
}