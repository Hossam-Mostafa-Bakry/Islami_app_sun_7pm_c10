import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethDetailsData> allHadethDetails = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    loadData();
    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_header.png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1.2,
          color: theme.primaryColor,
        ),
        const Text(
          "الاحاديث",
          style: TextStyle(
              fontSize: 25,
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w600),
        ),
        Divider(
          thickness: 1.2,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadethDetailsView.routeName,
                  arguments: allHadethDetails[index],
                );
              },
              child: Text(
                allHadethDetails[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "El Messiri",
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
            ),
            itemCount: allHadethDetails.length,
          ),
        )
      ],
    );
  }

  loadData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = content.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();

      int titleLength = singleHadeth.indexOf("\n");

      String title = singleHadeth.substring(0, titleLength);
      String content = singleHadeth.substring(titleLength + 1);

      HadethDetailsData hadeth = HadethDetailsData(title, content);

      allHadethDetails.add(hadeth);
    }
  }
}

class HadethDetailsData {
  final String title;
  final String content;

  HadethDetailsData(this.title, this.content);
}
