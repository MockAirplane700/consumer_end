import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)){
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber
    );
    await launchUrl(launchUri);
  }

  Future<void> _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mthandazo99@gmail.com',
      queryParameters: {'subject': 'Contact help'},
    );
    if(!await launchUrl(emailLaunchUri)){
      throw 'could not launch $emailLaunchUri';
    }
  }


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
          child: Container(
            height: MediaQuery.of(context).size.height,
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
                          // place call through url_launcher
                          _makePhoneCall(contactNumber);

                        },
                        icon: const Icon(Icons.phone)
                    ),
                    //email
                    IconButton(
                        onPressed: () {
                          // place email through url_launcher
                          _sendEmail();
                        },
                        icon: const Icon(Icons.mail_outline)
                    )
                  ],
                )),
                //the socials in a row
                Flexible(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Instagram
                    Flexible(
                        child: IconButton(
                            onPressed: () {
                              //open instagram
                              _launchInBrowser(Uri.parse(instagram));
                            },
                            icon: const FaIcon(FontAwesomeIcons.instagram)
                        )),
                    //facebook
                    Flexible(
                        child: IconButton(
                            onPressed: () {
                              //open facebook
                              _launchInBrowser(Uri.parse(facebook));
                            },
                            icon: const FaIcon(FontAwesomeIcons.facebook)
                        )),
                    //twitter
                    Flexible(
                        child: IconButton(
                            onPressed: () {
                              //open twitter
                              _launchInBrowser(Uri.parse(twitter));
                            },
                            icon: const FaIcon(FontAwesomeIcons.twitter)
                        )),
                    //website
                    Flexible(
                        child: IconButton(
                            onPressed: () {
                              //open website
                              _launchInBrowser(Uri.parse(website));
                            },
                            icon: const FaIcon(FontAwesomeIcons.globe)
                        )),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
