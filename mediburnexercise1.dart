import 'package:flutter/material.dart';

class MediburnExercise1 extends StatefulWidget {
  final String imageUrl;

  const MediburnExercise1({Key key, this.imageUrl})
      : super(key: key);
  @override
  _MediburnExercise1 createState() => _MediburnExercise1();
}

class _MediburnExercise1 extends State<MediburnExercise1> {
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
