// this class provides the logic to obtain user information

import 'package:consumer_end/objects%20and%20constants/apartment_unit.dart';
import 'package:consumer_end/objects%20and%20constants/problem.dart';
import 'package:consumer_end/objects%20and%20constants/rental_history_item.dart';
import 'package:consumer_end/objects%20and%20constants/user.dart';

class UserLogic {
  static final User _user =  User(
      phone: '+1-431-388-3047',
      apartmentUnit: ApartmentUnit(
          buildingAddy: '1515 Pembina Highway',
          buildingName: 'Royce',
          currentTenantName: 'Mthandazo Edwin Siziba',
          unitNumber: '16',
          photos: ['https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg'],
          problems: [Problem(
              photos: ['https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg'],
              problemDescription: 'lorem uipsum some problem',
              problemName: 'some problem',
              status: false
          )]
      ),
      email: 'mthandazo99@gmail.com',
      rentalHistory: [ RentalHistoryItem(
          unitNumber: '16',
          amountPayed: '796',
          date: '06/06/2022',
          unitBuilding: 'Royce'
      ), RentalHistoryItem(
          unitNumber: '16',
          amountPayed: '796',
          date: '06/06/2022',
          unitBuilding: 'Royce'
      ), RentalHistoryItem(
          unitNumber: '16',
          amountPayed: '796',
          date: '06/06/2022',
          unitBuilding: 'Royce'
      ),],
      name: 'Mthandazo Edwin Siziba'
  );

  static User getUser() {return _user;}
}