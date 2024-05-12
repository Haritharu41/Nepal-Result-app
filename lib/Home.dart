import 'package:flutter/material.dart';
import 'package:result_nepal/Result_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        title: Text("Result Nepal"),
      ),
      body: GridView.count(
        crossAxisSpacing:2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        children: [
          containerBox(
              "CTEVT Result", "https://itms.ctevt.org.np:5580/check_results"),
          containerBox("NEB Result", "https://neb.ntc.net.np/results.php"),
          containerBox("TU Result", "https://tuexam.edu.np/otuexam/tuexam/"),
          containerBox("KU Result", "https://ku.edu.np/news-app?tags=Result&search_site_name=kuhome"),
        ],
      ),
    );
  }
}

class containerBox extends StatelessWidget {
  String title;
  String url;
  containerBox(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.teal, borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
        ),
        onTap: () {
        launchUrlString(url);
        },
      ),
    );
  }
}
