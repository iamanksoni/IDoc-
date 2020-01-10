import 'package:flutter/material.dart';
import 'User/user.dart';
import 'package:firebase_storage/firebase_storage.dart';

void main() => runApp(new ImageViewer());

class ImageViewer extends StatefulWidget {
  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {

  String url;
  StorageReference _reference;
  String show() 
   {
    if(UserPage.num == 1)
    {
      print(UserPage.num);
     // _reference = FirebaseStorage.instance.ref().child('pancard.jpg');
      //url = _reference.getDownloadURL() as String;
      return url; 
    }
    else if(UserPage.num == 2)
    {
      //_reference = FirebaseStorage.instance.ref().child('aadharcard.jpg');
      //url = _reference.getDownloadURL() as String;
      return url; 
    }
    else
    {
      print("ankit");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text("Image"),
      ),
      body: Container(
        child: Center(
          child: show() != null ? Image.network("https://images.unsplash.com/photo-1499084732479-de2c02d45fcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80") : Image.network("https://images.unsplash.com/photo-1499084732479-de2c02d45fcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
        )
      ),
    );
  }
}
