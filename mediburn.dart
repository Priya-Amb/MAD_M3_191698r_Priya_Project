import 'package:flutter/material.dart';
import 'package:mad_priya_project/mediburnexercise1.dart';
import 'package:mad_priya_project/mediburnexercise2.dart';
import 'package:mad_priya_project/mediburnexercise3.dart';
import 'package:mad_priya_project/mediburnexercise4.dart';
import 'package:mad_priya_project/models/user_data.dart';
import 'package:mad_priya_project/preference_helper.dart';

class Mediburn extends StatefulWidget {
  @override
  _MediburnState createState() => _MediburnState();
}

class _MediburnState extends State<Mediburn> {
  UserData userData;

  @override
  void initState() {
    // getData();
    super.initState();
  }

  getData() async {
    userData = await PreferenceHelper.getUserData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                  text: 'Welcome,',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: userData?.name,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ]),
              style: TextStyle(fontSize: 45),
            ),
            SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search',
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Medi-Burn Exercises',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
                height: 350,
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExercise1(
                                    imageUrl: 'images/PexelsAlexyAlmond1.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/PexelsAlexyAlmond1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExercise2(
                                    imageUrl: 'images/PexelsAlexyAlmond2.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/PexelsAlexyAlmond2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExercise3(
                                    imageUrl: 'images/PexelsAlexyAlmond3.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/PexelsAlexyAlmond3.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediburnExercise4(
                                    imageUrl: 'images/PexelsAlexyAlmond4.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/PexelsAlexyAlmond4.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
