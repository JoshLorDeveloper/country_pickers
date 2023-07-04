class Country {
  String? name;
  String? isoCode;
  String? iso3Code;
  String? currencyCode;
  String? currencyName;

  Country({this.name, this.isoCode, this.iso3Code, this.currencyCode, this.currencyName});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isoCode = json['isoCode'];
    iso3Code = json['iso3Code'];
    currencyCode = json['currencyCode'];
    currencyName = json['currencyName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['isoCode'] = this.isoCode;
    data['iso3Code'] = this.iso3Code;
    data['currencyCode'] = this.currencyCode;
    data['currencyName'] = this.currencyName;
    return data;
  }
}
