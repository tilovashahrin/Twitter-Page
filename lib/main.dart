import 'package:flutter/material.dart';
import 'tweets.dart';
import 'tweet.dart';

void main() =>  runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 3 & 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'Lab 3 & 4'),
    );
  }
}

class MainPage extends StatefulWidget{
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _tweets = DataSource.generateTweets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          TweetWidget(
            tweet: _tweets[0],
          ),
          TweetWidget(
            tweet: _tweets[1]
          ),
          TweetWidget(
            tweet: _tweets[0]
          ),
          TweetWidget(
            tweet: _tweets[1]
          ), //tweetwidget
        ], //ListView
      ), //Scaffold
    );
  }
}
