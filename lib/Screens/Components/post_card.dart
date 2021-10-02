import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_spike_a/constant.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class PostCard extends StatefulWidget {
  String handle;
  String hashtag;
  int likes;
  int comments;
  Image? picture;
  VideoElement? video;
}
