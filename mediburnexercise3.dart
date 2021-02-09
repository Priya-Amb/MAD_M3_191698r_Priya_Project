import 'package:flutter/material.dart';

class MediburnExercise3 extends StatefulWidget {
  final String imageUrl;

  const MediburnExercise3({Key key, this.imageUrl})
      : super(key: key);
  @override
  _MediburnExercise3 createState() => _MediburnExercise3();
}

class _MediburnExercise3 extends State<MediburnExercise3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: layout(),
    );
  }

  Widget layout() {
    return Center(
      child: Image.asset(
        widget.imageUrl,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
