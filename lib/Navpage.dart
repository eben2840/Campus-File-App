import 'package:flutter/material.dart';
import 'package:text/About.dart';
import 'package:text/AnotherPage.dart';
import 'package:text/Nominate.dart';
import 'package:text/api/firebase_api.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/widgets.dart';
// import 'Navpage.dart';


class Navpage extends StatefulWidget {
  Navpage({Key? key}) : super(key: key);

  @override
  _NavpageState createState() => _NavpageState();
}

class _NavpageState extends State<Navpage> {
  @override
  void initState() {
    super.initState();
    FirebaseApi().initNotification();
  }

  late WebViewController controller;
  double progress = 0.0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 18, 6, 151),
        title: Text("Presto Stay",
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "PlusJakartaSans",
        ),),),
        body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          // bottom: 20,
                        ),
                        child: Text(
                          'Presto Solutions',
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 20,
                            color: Color.fromARGB(255, 18, 6, 151),
                            // fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Text("Presto Stay",
                        
                       style: TextStyle(
                        fontFamily: "PlusJakartaSans",
                            fontSize: 45,
                            // fontWeight: FontWeight.w800,
                          ),),
                          
                          ),
                      Container(
                        child: Text("Your ultimate student accommodation solution! Streamline your search for the perfect place while focusing on your studies. From cozy studios to shared apartments, we've got you covered. Safety is our priority, as we carefully vet all landlords and properties. Join our vibrant student community and find your ideal home away from home with PrestoStay today!",
                       style: TextStyle(
                        fontFamily: "PlusJakartaSans",
                            fontSize: 15,
                            color: Color.fromARGB(255, 80, 83, 86),
                            // fontWeight: FontWeight.w100,
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          
                        ),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 25, 22, 217),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => About(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                      'I am paying for a place',
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans",
                                color: Colors.white,
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Container(
                      //   margin: EdgeInsets.only(
                      //     top: 10,
                          
                      //   ),
                      //   padding: EdgeInsets.all(20),
                      //   decoration: BoxDecoration(
                      //     color: Color.fromARGB(255, 250, 250, 251),
                      //     borderRadius: BorderRadius.circular(8),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.5),
                      //         spreadRadius: 1,
                      //         blurRadius: 1,
                      //         offset: Offset(0,3),
                      //       ),
                      //     ]
                      //   ),
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       // Navigator.of(context).push(
                      //       //   // MaterialPageRoute(
                      //       //   //   builder: (context) => About(),
                      //       //   // ),
                      //       // );
                      //     },
                      //     child: Center(
                      //       child: Text(
                      // 'Make Enquirers',
                      //         style: TextStyle(
                      //           color: Color.fromARGB(255, 16, 13, 208),
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),

                       
            Image.asset('assets/hero.png',
            ),


                      Container(
                          
                      )

                          


                    ],
                  ),
                )
              ],
            ),
          ),
        ]
        ),
    );

          
          
          // color: Colors.white,
          // padding: EdgeInsets.only(top: 50.0),
          // child: WebView(
            
          //   initialUrl: "https://stay.prestoghana.com/",
          //   javascriptMode: JavascriptMode.unrestricted,
          //   onWebViewCreated: (WebViewController webViewController) {
          //     controller = webViewController;
          //   },
          //   onPageFinished: (url) {
          //      controller.evaluateJavascript(
          //       "document.getElementsByTagName('nav')[0].style.display='none';");
          //    controller.evaluateJavascript(
          //       "document.getElementsByTagName('hr')[0].style.display='none';");
             
          //     controller.evaluateJavascript(
          //       "document.getElementsByTagName('button')[0].style.display='none';");
             
          //   },
          //   onProgress: (progress) {
          //     setState(() {
          //       this.progress = progress / 100;
          //     });
          //   },

            
            
          // ),
          
     
  }
}