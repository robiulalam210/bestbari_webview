import 'package:flutter/material.dart';

import 'webview.dart';

class SplahScrren extends StatefulWidget {
  const SplahScrren({Key? key}) : super(key: key);

  @override
  State<SplahScrren> createState() => _SplahScrrenState();
}

class _SplahScrrenState extends State<SplahScrren> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 1,
    )).then((value) {
      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage()));
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => WebViewPage()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/app.png",
                 // height: MediaQuery.of(context).size.height * 0.40,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
             Text(
              "Bestbari".toString().toUpperCase(),
              style: TextStyle(
                fontSize: 40,color: Colors.black,fontWeight: FontWeight.w600
              ),
            )


          ],
        ),
      ),
    ));
  }
}
