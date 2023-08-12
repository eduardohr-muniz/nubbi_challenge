import 'package:flutter/material.dart';

class IsHarshadUsecase {
  bool call(int number) {
    if (number > 0) {
      String numberString = number.toString();
      int divisor = 0;
      for (var c in numberString.characters) {
        divisor += int.parse(c);
      }

      return (number % divisor) == 0;
    } else {
      return false;
    }
  }
}
