import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTitleWidget({
    super.key,
    required this.suraName,
    required this.suraNumber,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Messiri",
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          width: 1.2,
          height: 35,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            suraName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Messiri",
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
