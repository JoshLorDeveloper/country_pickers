# currency_pickers

Countries, currency codes, flags and several way of picking them at your service...one widget away...


##### CountryPickerDropdown example

```dart
 CountryPickerDropdown(
            initialValue: 'tr',
            itemBuilder: _buildDropdownItem,
            onValuePicked: (Country country) {
              print("${country.name}");
            },
          ),
```


```dart
 Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.currencyCode}(${country.isoCode})"),
          ],
        ),
      );
```


##### CountryPickerDialog example

```dart
void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: CountryPickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select your phone code'),
                onValuePicked: (Country country) =>
                    setState(() => _selectedDialogCountry = country),
                itemBuilder: _buildDialogItem)),
      );
```



##### CountryPickerCupertino example

```dart
 void _openCupertinoCountryPicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerCupertino(
          pickerSheetHeight: 300.0,
          onValuePicked: (Country country) =>
              setState(() => _selectedCupertinoCountry = country),
        );
      });
```


## Credits
Forked from [country_pickers](https://github.com/figengungor/country_pickers) repo.
Thanks goes to [country-flags](https://github.com/hjnilsson/country-flags) repo for the flag image assets.
