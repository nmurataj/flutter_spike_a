import 'package:flutter/material.dart';
import 'package:flutter_spike_a/Screens/Components/post_card.dart';
import 'package:flutter_spike_a/constant.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class PostFeed extends StreamBuilderBase {
  var stream = ;

  const PostFeed({Key? key, this.stream}): super(key:key);

}
