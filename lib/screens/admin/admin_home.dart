import 'package:flutter/material.dart';

class AHome extends StatefulWidget {
  const AHome({Key? key}) : super(key: key);

  @override
  State<AHome> createState() => _AHomeState();
}

class _AHomeState extends State<AHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("AHome"),
    );
  }
}
