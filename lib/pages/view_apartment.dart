import 'package:carousel_slider/carousel_slider.dart';
import 'package:consumer_end/objects%20and%20constants/apartment_unit.dart';
import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:flutter/material.dart';

class ViewApartment extends StatefulWidget {
  final ApartmentUnit apartmentUnit;
  const ViewApartment({Key? key, required this.apartmentUnit}) : super(key: key);

  @override
  State<ViewApartment> createState() => _ViewApartmentState();
}

class _ViewApartmentState extends State<ViewApartment> {
  @override
  Widget build(BuildContext context) {
    ApartmentUnit apartmentUnit = widget.apartmentUnit;
   final  List<String> list = apartmentUnit.photos;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available rentals' , style: TextStyle(color: primaryTextColor),),
        backgroundColor: primaryAppBarColor,
      ),
      backgroundColor: primaryBackgroundColor,
      body: Center(child: SingleChildScrollView(child: Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.height/100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index, int pageViewIndex){
                  //here we display the images
                  return Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/100), child: Image.network(list[index]),);
                },
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height/3,
                    aspectRatio: 16/9,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    scrollDirection: Axis.horizontal
                )
            ),
            Row(
              children: [
                Text('Apartment unit: ${apartmentUnit.unitNumber}'),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/100,),
            Text(apartmentUnit.description),
            SizedBox(height: MediaQuery.of(context).size.height/100,),
            Row(children: [Text('Rent: \$${apartmentUnit.rent}.00')],),
            // a way to share the information to a friend
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Link to apartment listing online is shared through text')));
            }, child: const Text('Share'))

          ],
        ),
      ),),),
    );
  }
}
