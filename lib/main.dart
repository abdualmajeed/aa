import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => InitialPage(),  //This is what you are missing i guess
        "/home": (context) => HomePage(),
        "/page1": (context) => Page1(),
      },
    );
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Initial Page")),
      body: Center(
        child: RaisedButton(
          //child: Image.network("data:image/jpeg;base64,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",height: 50,width: 50,),
          onPressed: () {
            Navigator.pushNamed(
                context,
                "/home"
            );
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              child: Text("Goto Page1"),
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    "/page1"
                );
              },
            ),
          ),
          Image.network("")
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page1")),
      body: Center(
        child: RaisedButton(
          child: Text("Button"),
          onPressed: () {},
        ),
      ),
    );
  }
}