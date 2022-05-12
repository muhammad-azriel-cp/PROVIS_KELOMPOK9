import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class mhsSeries{
  final String year;
  final double ipk;
  final charts.Color barColor;

  mhsSeries({
    required this.year,
    required this.ipk,
    required this.barColor
  });
}