import 'package:flutter/cupertino.dart';

class CourseContentModel {
  String name;
  String desc;
  Future<dynamic> onpress;
  CourseContentModel({
    required this.desc,
    required this.name,
    required this.onpress,
  });
}
