import 'package:flutter/material.dart';



extension SizePadding on num {
  SizedBox get emptyWidth => SizedBox(width: toDouble());
  SizedBox get emptyHeight => SizedBox(height: toDouble());
}

extension EdgePadding on num {
  EdgeInsetsGeometry get pt => EdgeInsets.only(top: toDouble());
  EdgeInsetsGeometry get pb => EdgeInsets.only(bottom: toDouble());
  EdgeInsetsGeometry get pl => EdgeInsets.only(left: toDouble());
  EdgeInsetsGeometry get pr => EdgeInsets.only(right: toDouble());
  EdgeInsetsGeometry get psv => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsetsGeometry get psh => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsetsGeometry get p => EdgeInsets.all(toDouble());
}

extension RadiusExt on BorderRadius {
  static BorderRadius get cardRaduis => BorderRadius.circular(15);
  static BorderRadius get buttonRaduis => BorderRadius.circular(20);
}

extension RaduisValue on num {
  BorderRadius get onlyTop => BorderRadius.only(
      topRight: Radius.circular(toDouble()),
      topLeft: Radius.circular(toDouble()));
  BorderRadius get onlyBottom => BorderRadius.only(
      bottomLeft: Radius.circular(toDouble()),
      bottomRight: Radius.circular(toDouble()));
  BorderRadius get allRaduis => BorderRadius.all(Radius.circular(toDouble()));
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  }


extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
