import 'package:consumer_end/objects%20and%20constants/apartment_unit.dart';

class Building {
  final String name;
  final String streetNumber;
  final String streetName;
  final String city;
  final String networkImage;
  final List<ApartmentUnit> units;

  Building({
    required this.networkImage, required this.city, required this.name,
    required this.streetName, required this.streetNumber, required this.units
});
}