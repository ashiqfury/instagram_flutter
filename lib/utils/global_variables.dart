import 'package:flutter/material.dart';
import 'package:instagram_flutter/screens/add_post_screen.dart';
import 'package:instagram_flutter/screens/feed_screen.dart';

const int webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('Search'),
  AddPostScreen(),
  Text('Favourites'),
  Text('Profile'),
];
