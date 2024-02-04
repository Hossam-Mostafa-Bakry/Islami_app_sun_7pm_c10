import 'package:flutter/material.dart';
import 'package:islami_app_c10_sun_7pm/moduls/hadeth/page/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "hadethDetails";

  const HadethDetailsView({super.key});

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/main_background.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 80),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 80),
          decoration: BoxDecoration(
              color: const Color(0XFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Text(
                args.title,
                style: const TextStyle(
                    fontSize: 25,
                    fontFamily: "El Messiri",
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24,
                          fontFamily: "El Messiri",
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
