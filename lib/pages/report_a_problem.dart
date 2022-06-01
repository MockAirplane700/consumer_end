import 'dart:io';

import 'package:consumer_end/objects%20and%20constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ReportAProblem extends StatefulWidget {
  const ReportAProblem({Key? key}) : super(key: key);

  @override
  State<ReportAProblem> createState() => _ReportAProblemState();
}

class _ReportAProblemState extends State<ReportAProblem> {

  final _formKey = GlobalKey<FormState>();
  File ? image;
  String error = '';
  
  Future pickImageGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      //the image from the phone now to be transmitted
    } on PlatformException catch(e){
      error = 'Failed to pick image: $e';
    }
  }

  Future pickImageCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      //the image from the phone now to be transmitted
    } on PlatformException catch(e){
      error = 'Failed to pick image: $e';
    }
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Report a problem', style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: primaryBackgroundColor,
      body: Center(child: Form(
          key: _formKey,
          child: Column(
            children: [
              //name problem
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field cannot be empty please enter text';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: 'Please describe the problem in one to three words'),
                maxLines: 1,
              ),
              // describe problem
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field cannot be empty please enter text';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: 'Please Summarise the problem.'),
                maxLines: 15,
              ),
              //upload picture of the problem
              Row(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,children: [
                Flexible(child: IconButton(
                    onPressed: () {
                      //go to camera
                      pickImageCamera();
                    }, 
                    icon: const FaIcon(FontAwesomeIcons.camera)
                )),
                Flexible(child: IconButton(
                    onPressed: () {
                      //go to galley
                      pickImageGallery();
                    },
                    icon: const Icon(Icons.library_books_outlined)
                )),
              ],),
              Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height/100), child: ElevatedButton(
                  onPressed: () {
                    // TODO: Send the problem to the manager and home office
                    if (_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing')));
                    }
                  },
                  child: const Text('Submit')
              ),)
            ],
          ),
      ),
      ),
    );
  }
}
