import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'Navpage.dart';


class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

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
          title: Text("My Profile",
          style: TextStyle(
            fontFamily: "PlusJakartaSans",
          ),),
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: "https://stay.prestoghana.com/findme",
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
            ),
            if (progress < 1.0)
              Center(
                child: CircularProgressIndicator(
                  value: progress,
                  backgroundColor: Color.fromARGB(255, 19, 9, 214),
                  // color: Color.fromARGB(255, 19, 9, 214),
                ),
              ),
          ],
        ),
      ),
      );  
  }
}