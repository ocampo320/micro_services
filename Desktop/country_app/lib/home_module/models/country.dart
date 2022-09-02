class Country {
  String? countryName;
  String? countryShortName;
  int? countryPhoneCode;

  Country({this.countryName, this.countryShortName, this.countryPhoneCode});

  Country.fromJson(Map<String, dynamic> json) {
    countryName = json['country_name'];
    countryShortName = json['country_short_name'];
    countryPhoneCode = json['country_phone_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_name'] = this.countryName;
    data['country_short_name'] = this.countryShortName;
    data['country_phone_code'] = this.countryPhoneCode;
    return data;
  }
}
