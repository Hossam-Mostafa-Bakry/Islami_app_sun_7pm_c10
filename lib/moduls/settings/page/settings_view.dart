import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Settings View",
        style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
