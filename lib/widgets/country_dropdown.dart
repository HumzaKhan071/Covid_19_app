import 'package:flutter/material.dart';

class CountryDropDown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function(String) onChanged;
  const CountryDropDown({Key key, this.countries, this.country, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        
      ),
      child: DropdownButtonHideUnderline(child: 
      ),
    );
  }
}
