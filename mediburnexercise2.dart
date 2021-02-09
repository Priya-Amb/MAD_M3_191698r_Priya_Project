import 'package:flutter/material.dart';

class MediburnExercise2 extends StatefulWidget {
  final String imageUrl;

  const MediburnExercise2({Key key, this.imageUrl})
      : super(key: key);
  @override
  _MediburnExercise2 createState() => _MediburnExercise2();
}

class _MediburnExercise2 extends State<MediburnExercise2> {
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
