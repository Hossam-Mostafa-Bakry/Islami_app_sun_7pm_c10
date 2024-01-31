import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c10_sun_7pm/moduls/quran/page/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    // async
    if (versesList.isEmpty) loadData(args.suraNumber);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "El Messiri",
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.play_circle_filled_rounded,
                    size: 28,
                  ),
                ],
              ),
              Divider(
                color: theme.primaryColor,
              ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: theme.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      "{${index + 1}} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        height: 1.8,
                        fontSize: 20,
                        fontFamily: "El Messiri",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    itemCount: versesList.length,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  List<String> versesList = [];

  Future<void> loadData(String index) async {
    String content = await rootBundle.loadString("assets/files/$index.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}
