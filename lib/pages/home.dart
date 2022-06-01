import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:consumer_end/pages/about.dart';
import 'package:consumer_end/pages/avaliable_rentals.dart';
import 'package:consumer_end/pages/payment_history.dart';
import 'package:consumer_end/pages/report_a_problem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: primaryAppBarColor,

      ),
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: Container(
          height:MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(height:MediaQuery.of(context).size.height/3 ,width: MediaQuery.of(context).size.width/3,child: Image.network(logo)),
              Container(
                height:MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    //todo: consider using cards instead of just a column so we have more room for decoration
                    //report a problem
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              //go to the page to file a report for a problem
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReportAProblem()));
                            },
                            icon: const FaIcon(FontAwesomeIcons.circleExclamation)
                        ),
                        const Text('Report a problem')
                      ],
                    ),
                    // available apartments
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              //go to the available apartments page
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AvailableRentals()));
                            },
                            icon: const FaIcon(FontAwesomeIcons.buildingUser)
                        ),
                        const Text('View available rentals')
                      ],
                    ),
                    // rental history
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              //go to the rental history page
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentHistory()));
                            },
                            icon: const FaIcon(FontAwesomeIcons.clockRotateLeft)
                        ),
                        const Text('Rental History')
                      ],
                    ),
                    // about
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              //go to the about page
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const About()));
                            },
                            icon: const FaIcon(FontAwesomeIcons.info)
                        ),
                        const Text('About Us')
                      ],
                    ),


                  ],
                ),
              ),
            ],),
          ),
        )
      ),
    );
  }
}
