import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  double sH() => MediaQuery.of(this).size.height;
  double sW() => MediaQuery.of(this).size.width;
  // double dpr() => MediaQuery.of(this).devicePixelRatio;
  // double sWbH() {
  //   return sH() >= sW()
  //       ? (sH() + 29.1 + MediaQuery.of(this).padding.bottom) / sW()
  //       : (sW() + 29.1 + MediaQuery.of(this).padding.bottom) / sH();
  // }
}
