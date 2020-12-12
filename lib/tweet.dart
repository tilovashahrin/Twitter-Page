//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tweets.dart';

class TweetWidget extends StatefulWidget{
  TweetWidget({Key, key, this.tweet}) : super(key: key);

  final Tweet tweet;

  @override
  _TweetWidgetState createState() => _TweetWidgetState(tweet: this.tweet);
}

class _TweetWidgetState extends State<TweetWidget>{
  Tweet tweet;

  _TweetWidgetState({this.tweet});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: tweet.author.avatar,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildAuthorRow(tweet),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 320.0,
                child: Text(tweet.description, overflow: TextOverflow.ellipsis, maxLines: 8),
              ),
              Container(
                //image
                padding: EdgeInsets.all(10.0),
                child: tweet.image,
              ),
              _buildEngagementRow(tweet),
          ],
          ),
        ],
      ),
    );
  }

  Widget _buildAuthorRow(Tweet tweet){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //author row
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            tweet.author.longName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(tweet.author.shortName),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(tweet.timeString),
        ),
        Icon(Icons.expand_more, color: Colors.grey.shade500),
      ],
    );
  }

  Widget _buildEngagementRow(Tweet tweet){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildIconPair(Icon(Icons.chat_bubble_outline, color: Colors.grey.shade500), '${tweet.numComments}'),
        _buildIconPair(Icon(Icons.repeat, color: Colors.grey.shade500), '${tweet.numRetweets}'),
        _buildIconPair(Icon(Icons.favorite_border, color: Colors.grey.shade500), '${tweet.numLikes}'),
        _buildIconPair(Icon(Icons.bookmark_border, color: Colors.grey.shade500), null),
      ],
    );
  }

  Widget _buildIconPair(Icon icon, String text){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(padding: EdgeInsets.only(right: 5.0), child: icon),
          text == null ? Container() : Text(text),
        ],
      ),
    );
  }
}