import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Tasbeh View",
        style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
