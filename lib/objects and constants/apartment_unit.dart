import 'package:consumer_end/objects%20and%20constants/problem.dart';

class ApartmentUnit {
  final String unitNumber;
  final String buildingName;
  final String buildingAddy;
  final List<Problem> problems;
  final String currentTenantName;
  final List<String> photos;

  ApartmentUnit(
  {
    required this.buildingAddy, required this.buildingName, required this.currentTenantName,
    required this.unitNumber, required this.photos, required this.problems
}
      );
}