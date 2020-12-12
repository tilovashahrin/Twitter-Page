import 'package:flutter/material.dart';

class DataSource{
  static List<User> generateUsers(){
    return[
      User(
        avatar: CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text('NYT'),
        ),
        longName: 'The New York Times',
        shortName: '@NewYorkTimes'
      ), //User
      User(
          avatar: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Text('TS'),
          ),
          longName: 'Toronto Star',
          shortName: '@TorontoStar',
      ),
    ];
  }

  static List<Tweet> generateTweets(){
    List<User> users = generateUsers();
    return[
      Tweet(
        image: Image.asset('images/cookies.jpg', width: 300.0),
        author: users[0],
        publishedDate: DateTime.now(),
        timeString: '1h',
        description: 'After many attempts at making the ultimate chocolate chip cookie, British pastry chef Ravneet Gill has landed on the perfect formula. Her legions of fans on Instagram agree.',
        numComments: 206,
        numLikes: 1600,
        numRetweets: 309,
      ),
      Tweet(
        image: Image.asset('images/twitch.jfif', width: 300.0),
        author: users[1],
        publishedDate: DateTime.now(),
        timeString: '2h',
        description: 'At 20, Toronto''s own Nemo Zhou has become a Twitch star  playing chess. She''s a double major in economics and statistics with a minor in math. She''s been playing since she was 3. We spoke to the rising star about competition, inspiration, and patience.',
        numComments: 288,
        numLikes: 11500,
        numRetweets: 8969,
      ),
    ];
  }
}

class User{
  CircleAvatar avatar;
  String longName;
  String shortName;

  User({this.avatar, this.longName, this.shortName});
}

class Tweet{
  User author;
  DateTime publishedDate;
  String timeString;
  String description;
  int numComments;
  int numRetweets;
  int numLikes;
  Image image;

  Tweet({this.author, this.publishedDate, this.timeString, this.description, this.numComments, this.numRetweets, this.numLikes, this.image});
}

