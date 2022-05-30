import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: primaryAppBarColor,
      ),
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo or banner
              Flexible(child: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height/100), child: Image.network(logo),)),
              //the name of company
              const Flexible(child: Text(companyName)),
              //the company description
              Flexible(child: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height/100), child: const Text(aboutCompany, maxLines: 25,),)),
              // in a row, call, email
              Flexible(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // call
                  IconButton(
                      onPressed: () {
                        //todo: place call through url_launcher
                      },
                      icon: const Icon(Icons.phone)
                  ),
                  //email
                  IconButton(
                      onPressed: () {
                        //todo: place email through url_launcher
                      },
                      icon: const Icon(Icons.mail_outline)
                  )
                ],
              )),
              //the socials in a row
              Flexible(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Instagram
                  // Expanded(child: IconButton(onPressed: onPressed, icon: icon)),
                  //facebook
                  //twitter
                  //website
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
