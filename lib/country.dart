class Country {
  String name;
  String code;

  Country({this.name, this.code});
  /*Country(String name, String code) {
    this.name = name;
    this.code = code;
  }*/

  String getName() {
    return name;
  }

  String getCode() {
    return code;
  }

  factory Country.fromJson(Map<String, dynamic> json) {
    return new Country(
      name: json['name'] as String,
      code: json['code'] as String
    );
  }
}