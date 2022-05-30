import 'package:consumer_end/objects%20and%20constants/constants.dart';
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
          child: GridView.count(
              crossAxisCount: 2,
            children: [
              //report a problem
              IconButton(
                  onPressed: () {
                    //go to the page to file a report for a problem
                  },
                  icon: const FaIcon(FontAwesomeIcons.circleExclamation)
              ),
              // available apartments
              IconButton(
                  onPressed: () {
                    //go to the available apartments page
                  },
                  icon: const FaIcon(FontAwesomeIcons.buildingUser)
              ),
              // rental history
              IconButton(
                  onPressed: () {
                    //go to the rental history page
                  },
                  icon: const FaIcon(FontAwesomeIcons.clockRotateLeft)
              ),
              // about
              IconButton(
                  onPressed: () {
                    //go to the about page
                  },
                  icon: const FaIcon(FontAwesomeIcons.info)
              ),


            ],
          ),
        ),
      ),
    );
  }
}
