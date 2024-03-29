import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snake_game/app_navigator.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0.0,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Stack(children: <Widget>[
                  Container(
                    color: Colors.amber
                    ,child: Image(image: AssetImage('assets/images/snake_2d.jpg'))
                  ),
                  Center(
                    child: Text(
                      'Snake-2D',
                      style: TextStyle(fontSize: 26, color: Colors.white54),
                    ),
                  ),
                ])),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.black12.withOpacity(0.8)),
                  ),
                  onPressed: () {
                    AppNavigator.goToGame(context);
                  },
                  child: Text("Start Game",
                      style: TextStyle(fontSize: 18, color: Colors.white70)),
                ),
              ),
            ),
            Divider(),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.black12.withOpacity(0.8)),
                  ),
                  onPressed: () {
                    showHighScoreDialog();
                  },
                  child: Text("High Scores",
                      style: TextStyle(fontSize: 18, color: Colors.white70)),
                ),
              ),
            ),
            Divider(),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.black12.withOpacity(0.8)),
                  ),
                  onPressed: () {},
                  child: Text("About",
                      style: TextStyle(fontSize: 18, color: Colors.white70)),
                ),
              ),
            ),
            Divider(),
            Expanded(child: Container(), flex: 1),
            Expanded(child: Container(), flex: 1)
          ],
        ),
      ),
    );
  }

  Future<void> showHighScoreDialog() async {
    final prefs = await SharedPreferences.getInstance();

    // fetch your string list
    List<String> mList = (prefs.getStringList('HighScores') ??
        List<String>.empty(growable: true));
    print(mList.length);

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Colors.black54,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white60,
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: Column(
            children: [
              Text(
                "High Scores",
                style: TextStyle(color: Colors.yellow.withOpacity(0.9)),
              ),
              Divider(
                color: Colors.white60,
              )
            ],
          ),
          content: Container(
              height: 200,
              width: 600,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: mList.length<5?mList.length:5,
                        itemBuilder: (BuildContext context, int index) {
                      return Text(
                        "${index+1}. ${mList[index]}",
                        style: TextStyle(color: Colors.yellow.withOpacity(0.9)),
                      );
                    })
                  ])),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
              },
              child: Text(
                "Close",
                style: TextStyle(
                    color: Colors.white60, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}
