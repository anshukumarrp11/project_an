import 'package:flutter/material.dart';
import 'package:flutterlearning/uipage/circle.dart';
import 'package:flutterlearning/uipage/square.dart';

class Dashboard extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
    'post 8',
    'post 9',
    'post 0'
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
    'story 7',
    'story 8',
    'story 9',
    'story 0'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return MyCircle(child: _stories[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (BuildContext context, int index) {
                return MySquare(child: _posts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
