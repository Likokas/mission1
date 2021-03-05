import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor;

  @override
  void initState() {
    super.initState();
    favcolor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.orange])),
            child: Column(
              children: <Widget>[
                Flexible(
                    flex: 2,
                    child: Container(
                        width: 500,
                        child: Image(
                          image: AssetImage("assets/Yoshinoya.png"),
                          fit: BoxFit.fill,
                        ))),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 100,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image:
                                      AssetImage("assets/Yoshinoya1_1.jpg")))),
                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 110,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image:
                                      AssetImage("assets/Yoshinoya3_1.jpg")))),
                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 100,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image: AssetImage("assets/Yoshinoya4.jpg")))),
                      Flexible(
                          flex: 1,
                          child: Container(
                              width: 100,
                              margin: EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(8.0)),
                              //   color: Colors.redAccent,
                              // ),
                              child: Image(
                                  image: AssetImage("assets/Yoshinoya2.jpg")))),
                    ],
                  ),
                ),
                Text(
                  'YOSHINOYA',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                Flexible(
                  flex: 4,
                  child: ListView(
                    children: <Widget>[
                      Text(
                          "Yoshinoya  is a Japanese multinational fast food chain, and the second-larges chain of gyūdon  restaurants. The chain was established in Japan in 1899. Its motto is , low-priced, and quick",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                          textAlign: TextAlign.left),
                      Text(
                          "The kanji 吉 (yoshi) means luck in Japanese, the kanji 野 (no) means field, and the kanji 家 (ya) means house.",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                          textAlign: TextAlign.left),
                      Text(""),
                      Text(""),
                      Text(
                          "Yoshinoya first opened in 1899 at the Nihonbashi fish market in Tokyo"
                          "When the market was devastated by the Great Kantō earthquake, Yoshinoya moved to the new Tsukiji fish market in Tokyo in 1926."
                          "The chain opened its first 24-hour store in 1952."
                          "On December 27, 1958, the chain's business model was changed from self-employed restaurants to a stock company, as an attempt to gain more profit"
                          "In 1965, the chain earned a million dollars in sales, which led to the idea of expanding the chain's operations in Japan."
                          "the chain's first franchised store was opened in Shinsaibashi, in 1968"
                          "In 1975, the first American store of the fast-food chain was opened in Colorado."
                          "In the early 2000s, Yoshinoya, along with other chains such as McDonald's, triggered a price war in Japan by introducing a regular beef bowl dish for 280 yen.",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                          textAlign: TextAlign.left)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (favcolor == Colors.white) {
                      favcolor = Colors.red;
                    } else if (favcolor == Colors.red) {
                      favcolor = Colors.white;
                    }
                  });
                },
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.favorite,
                  color: favcolor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
