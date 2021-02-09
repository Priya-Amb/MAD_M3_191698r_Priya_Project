import 'package:flutter/material.dart';

class DetailsPage2 extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Appointment', style: TextStyle(color: Colors.white),
    ),
   backgroundColor: Colors.deepPurple,
    iconTheme: IconThemeData(color: Colors.white),
    ),
    body: _buildBody(),
    );
  }
  Widget _buildBody(){
    return SingleChildScrollView(child: Column(children: <Widget>[_bigImage(),
    SafeArea(
      child: Padding(padding: EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_nameInfo(),
      Divider(),
      _favourites(),
      Divider(),
      _tag1(),
      Divider(),
      _images(),
      ],),)
    )
    ],),);
  }
  Image _bigImage(){
    return Image(image: AssetImage('images/lucasvasques.jpg'),
    fit: BoxFit.cover,
    );
  }
  Column _nameInfo(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Dr Elizbeth Mendez',
      style: TextStyle(fontSize: 30.0,
      fontWeight: FontWeight.bold,
      ),),
      Divider(),
    Text('Cholesterol tests',
    style: TextStyle(color: Colors.black45,
    fontSize: 17.0,
    ),
    ),
    Text('Appointment on 20/2/2021',
    style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
    ),
    ),
    ],
    );
  }
  Row _favourites(){
    return Row(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[Icon(Icons.check_box,
    color: Colors.deepPurpleAccent,
    )],
    ),
    SizedBox(width: 16.0),
    Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(children: <Widget>[
        Text('Appointment Booked', style: TextStyle(color: Colors.deepPurpleAccent),),
      ],),
    ],)
    ],
    );
  }
  Wrap  _tag1(){
    return Wrap(
      spacing: 8.0,
      children: List.generate(4, (int index) {
        return Chip(label:  Text('Medicine ${index+1}'),
        avatar: Icon(Icons.location_city,
        color: Colors.deepPurpleAccent,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
        );
      }
      ),
    );
  }
  Row _images(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[CircleAvatar(backgroundImage: AssetImage('images/annenygard.jpg'),
      radius: 40.0,
      ),
      CircleAvatar(backgroundImage: AssetImage('images/annenygard2.jpg'),
       radius: 40.0,
      ),
      CircleAvatar(backgroundImage: AssetImage('images/tomclaes.jpg'),
       radius: 40.0,
      ),
   
      SizedBox(
        width:100.0,
      ),
      ],
    );
  }

}
