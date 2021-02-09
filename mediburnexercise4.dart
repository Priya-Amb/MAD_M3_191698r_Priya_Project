import 'package:flutter/material.dart';

class MediburnExercise4 extends StatefulWidget {
  final String imageUrl;

  const MediburnExercise4({Key key, this.imageUrl})
      : super(key: key);
  @override
  _MediburnExercise4 createState() => _MediburnExercise4();
}

class _MediburnExercise4 extends State<MediburnExercise4> {
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
