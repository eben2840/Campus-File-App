import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Find extends StatefulWidget {
  Find({Key? key}) : super(key: key);

  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  late WebViewController controller;
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 18, 6, 151),
          title: Text(
            "Maps",
            style: TextStyle(
              fontFamily: "PlusJakartaSans",
            ),
          ),
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: "https://stay.prestoghana.com/maps",
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                controller = webViewController;
              },
              onPageFinished: (url) {
                controller.evaluateJavascript(
                    "document.getElementsByTagName('nav')[0].style.display='none';");
                controller.evaluateJavascript(
                    "document.getElementsByTagName('hr')[0].style.display='none';");
              },
              onProgress: (progress) {
                setState(() {
                  this.progress = progress / 100;
                });
              },
              // welcome to the new person to get to you to the new none, 
              // thi s is me ytrinh ot gibr hhtm bets to you on a regurlaer 
              // the new apple it here ,just now im here for initialCookies: [],
            ),
            if (progress < 1.0)
              Center(
                child: CircularProgressIndicator(
                  value: progress,
                  backgroundColor: Color.fromARGB(255, 19, 9, 214),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
