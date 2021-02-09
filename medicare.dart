import 'package:flutter/material.dart';
import 'package:mad_priya_project/details1.dart';
import 'package:mad_priya_project/details2.dart';
import 'package:mad_priya_project/details3.dart';
import 'package:mad_priya_project/details4.dart';

class Medicare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
             children: <Widget>[
          Container(
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 150.0,
                    height: 90.0,
                    child: Image(
                      image: AssetImage('images/image1.png'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Dr Wicky Wong",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Orthopedic assessment',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Appointment on 9/2/2021',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.explore),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage1()),
                      );
                    }),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 150.0,
                    height: 90.0,
                    child: Image(
                      image: AssetImage('images/image2.png'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Dr Elizbeth Mendez",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Cholesterol tests',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Appointment on 20/2/2021',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.explore),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage2(),
                        ),
                      );
                    }),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 150.0,
                    height: 90.0,
                    child: Image(
                      image: AssetImage('images/image1.png'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Dr Pearl Starr",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Health check-up',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Appointment on 10/3/2021',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.explore),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>DetailsPage3()),
                      );
                    }),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 150.0,
                    height: 90.0,
                    child: Image(
                      image: AssetImage('images/image2.png'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Dr Laura Hart",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Blood sugar tests',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Appointment on 15/4/2021',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.explore),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>DetailsPage4()),
                      );
                    }),
              ],
            ),
          ),
             ],
          ),
    );
  }
}

