import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Radio View",
        style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
