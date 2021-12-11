import 'package:flutter/material.dart';

class CountryDropDown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function(String) onChanged;
  const CountryDropDown({Key key, this.countries, this.country, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        value: country,
        items: countries
            .map(
              (e) => DropdownMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 12,
                      child: Image.asset(
                          "assets/images/${e.toLowerCase()}_flag.png"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      e,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                value: e,
              ),
            )
            .toList(),
        onChanged: onChanged,
      )),
    );
  }
}
