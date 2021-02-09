import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mad_priya_project/login.dart';
import 'package:mad_priya_project/models/user_data.dart';
import 'package:mad_priya_project/preference_helper.dart';

class MyDrawer extends StatefulWidget {
  final Function onTap;

  MyDrawer({this.onTap});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  UserData userData;

  @override
  Widget build(BuildContext context) {
    getUserData();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/smallbackground.jpg'),
                fit: BoxFit.cover
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/image.png'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      userData?.name ?? "",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.deepPurple,
              ),
              title: Text('Mediburn'),
              onTap: () => widget.onTap(context, 0, 'Mediburn'),
            ),
            ListTile(
              leading: Icon(Icons.healing,
              color: Colors.deepPurple,
              ),
              title: Text('Medicare'),
              onTap: () => widget.onTap(context, 1, 'Medicare'),
            ),
            ListTile(
              leading: Icon(Icons.person,
              color: Colors.deepPurple,
              ),
              title: Text('Profile'),
              onTap: () => widget.onTap(context, 3, 'Profile'),
            ),
            ListTile(
              leading: Icon(Icons.home_repair_service,
              color: Colors.deepPurple,
              ),
              title: Text('About'),
              onTap: () => widget.onTap(context, 2, 'About'),
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app,
                color: Colors.deepPurple,
                ),
                title: Text('Logout'),
                onTap: () async {
                  await PreferenceHelper.clearStorage();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                }),
          ],
        ),
      ),
    );
  }

  getUserData() async {
    userData = await PreferenceHelper.getUserData();
    setState(() {});
  }
}
