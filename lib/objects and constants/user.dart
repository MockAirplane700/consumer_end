import 'package:consumer_end/objects%20and%20constants/apartment_unit.dart';
import 'package:consumer_end/objects%20and%20constants/rental_history_item.dart';

class User {
  final String name;
  final String email;
  final String phone;
  final ApartmentUnit apartmentUnit;
  final List<RentalHistoryItem> rentalHistory;

  User({
    required this.phone, required this.apartmentUnit, required this.email,
    required this.rentalHistory, required this.name
});
}