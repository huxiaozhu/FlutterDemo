import 'package:flutter/material.dart';

extension MyImage on Image {
  Image getImage(String path)=>Image.asset(path);
}