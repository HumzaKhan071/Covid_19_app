import 'package:flutter/material.dart';

class CountryDropDown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function(String) onChanged;
  const CountryDropDown({Key key, this.countries, this.country, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
