import 'package:flutter/cupertino.dart';
import 'package:swiper_country_picker/mi_country_picker.dart';

mixin ToAlias {}

/// Country element. This is the element that contains all the information
class CountryData {
  /// the name of the country
  String? name;

  /// the flag of the country
  final String? flagUri;

  /// the country code (IT,AF..)
  final String? code;

  /// the dial code (+39,+93..)
  final String? dialCode;

  CountryData({
    this.name,
    this.flagUri,
    this.code,
    this.dialCode,
  });

  @override
  bool operator ==(Object other) {
    return (other is CountryData) && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;

  CountryData localize(BuildContext context) {
    return this
      ..name = CountryPickerLocalizations.of(context)?.translate(code) ?? name;
  }

  factory CountryData.fromJson(Map<String, dynamic> json) {
    return CountryData(
      name: json['name'],
      code: json['code'],
      dialCode: json['dial_code'],
      flagUri: 'lib/assets/flags/${json['code'].toLowerCase()}.png',
    );
  }

  @override
  String toString() => "$dialCode";

  String toLongString() => "$dialCode ${toCountryStringOnly()}";

  String toCountryStringOnly() {
    return '$_cleanName';
  }

  String? get _cleanName {
    return name?.replaceAll(RegExp(r'[[\]]'), '').split(',').first;
  }
}
