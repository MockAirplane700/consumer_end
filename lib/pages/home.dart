import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:consumer_end/pages/about.dart';
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
              //todo: consider using cards instead of just a column so we have more room for decoration
              //report a problem
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        //go to the page to file a report for a problem
                      },
                      icon: const FaIcon(FontAwesomeIcons.circleExclamation)
                  ),
                  const Text('Report a problem')
                ],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const About()));
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
