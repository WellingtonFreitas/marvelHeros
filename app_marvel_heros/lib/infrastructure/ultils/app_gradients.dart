import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    Color.fromARGB(193, 117, 39, 39),
    Color.fromARGB(255, 204, 21, 21),
  ], stops: [
    0.1,
    0.595
  ], transform: GradientRotation(5.6869920 * pi));
}
