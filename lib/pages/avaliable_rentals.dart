import 'package:carousel_slider/carousel_slider.dart';
import 'package:consumer_end/logic/apartment_listing.dart';
import 'package:consumer_end/objects%20and%20constants/apartment_unit.dart';
import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:consumer_end/pages/view_apartment.dart';
import 'package:flutter/material.dart';

class AvailableRentals extends StatefulWidget {
  const AvailableRentals({Key? key}) : super(key: key);

  @override
  State<AvailableRentals> createState() => _AvailableRentalsState();
}

class _AvailableRentalsState extends State<AvailableRentals> {

  final List<ApartmentUnit> _list = ApartmentListings.getUnits();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available rentals' , style: TextStyle(color: primaryTextColor),),
        backgroundColor: primaryAppBarColor,
      ),
      backgroundColor: primaryBackgroundColor,
      body: Center(child: ListView.builder(
          itemBuilder: (context, index) {
            if (_list.isEmpty) {
              //the list is empty
              return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children:const [
                CircularProgressIndicator(),
                Text('No apartments are available for rent currently please try again later')
              ],),);
            }else{
              //list is not empty
              return Card(
                color: primaryCardBackgroundColor,
                child: ListTile(
                  leading: Image.network(_list[index].photos[0]),
                  title: Text('Unit number: ${_list[index].unitNumber}'),
                  subtitle: Text('Building name: ${_list[index].buildingName}'),
                  trailing: Text('\$${_list[index].rent}.00'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewApartment(apartmentUnit: _list[index])));
                  },
                ),
              );
            }
          },
        itemCount: _list.length,
      )),
    );
  }
}
