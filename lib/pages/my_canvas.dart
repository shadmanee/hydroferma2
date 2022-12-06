// TODO Implement this library.import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyCanvas extends CustomPainter {
  final List<double> months;
  final double minD;
  final double maxD;
  final double rangeD;
  final double percentage;
  MyCanvas(this.months, this.minD, this.maxD, this.rangeD, this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.white;
    canvas.drawPaint(paint);
    var center = Offset(160, 300);
    drawChart(canvas, center);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  var chartW = 250.0;
  var chartH = 150.0;
  void drawChart(Canvas canvas, Offset center) {
    var rect = Rect.fromCenter(center: center, width: chartW, height: chartH);
    var chBorder = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    var dpPaint = Paint()
      ..color = Colors.blue.shade300
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    var titleStyle = TextStyle(
      color: Colors.grey[600],
      fontSize: 20,
      fontWeight: FontWeight.w100,
    );
    var labelStyle = TextStyle(
      color: Colors.grey[500],
      fontSize: 10,
    );
    // draw chart borders
    drawChartBorder(canvas, chBorder, rect);
    // draw data points
    drawDataPoints(canvas, dpPaint, rect);
    // draw chart guides
    drawChartGuides(canvas, chBorder, rect);
    // draw chart title
    drawText(canvas, rect.topLeft + Offset(0, -60), rect.width, titleStyle,
        "Usage (Nov '21 - Nov '22)");
    drawText(canvas, rect.topLeft + Offset(-20, -20), rect.width, labelStyle,
        "L/month");
    drawLabels(canvas, rect, labelStyle);
  }

  void drawChartBorder(Canvas canvas, Paint chBorder, Rect rect) {
    canvas.drawRect(rect, chBorder);
  }

  void drawChartGuides(Canvas canvas, Paint chBorder, Rect rect) {
    var x = rect.left;
    var colW = chartW / 12.0;
    for (var i = 0; i < 13; i++) {
      var p1 = Offset(x, rect.bottom);
      var p2 = Offset(x, rect.top);
      canvas.drawLine(p1, p2, chBorder);
      x += colW;
    }

    // draw horizontal lines
    var yD = chartH / 3.0;
    canvas.drawLine(Offset(rect.left, rect.bottom - yD),
        Offset(rect.right, rect.bottom - yD), chBorder);
    canvas.drawLine(Offset(rect.left, rect.bottom - yD * 2),
        Offset(rect.right, rect.bottom - yD * 2), chBorder);
  }

  void drawDataPoints(Canvas canvas, dpPaint, Rect rect) {
    if (months == null) return;
    // this ratio is the number of y pixels per unit data
    var yRatio = chartH / rangeD;
    var colW = chartW / 12.0;
    var p = Path();
    var x = rect.left;
    bool first = true;
    months.forEach((d) {
      // (d-minD) because we start our range at min value
      var y = (d - minD) * yRatio * percentage;
      if (first) {
        p.moveTo(x, rect.bottom - y);
        first = false;
      } else {
        p.lineTo(x, rect.bottom - y);
      }
      x += colW;
    });

    p.moveTo(x - colW, rect.bottom);
    p.moveTo(rect.left, rect.bottom);
    canvas.drawPath(p, dpPaint);
  }

  drawText(Canvas canvas, Offset position, double width, TextStyle style,
      String text) {
    final textSpan = TextSpan(text: text, style: style);
    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.ltr);
    textPainter.layout(minWidth: 0, maxWidth: width);
    textPainter.paint(canvas, position);
  }

  void drawLabels(Canvas canvas, Rect rect, TextStyle labelStyle) {
    final xLabel = [
      "Nov '21",
      "Dec '21",
      "Jan '22",
      "Feb '22",
      "Mar '22",
      "Apr '22",
      "May '22",
      "Jun '22",
      "Jul '22",
      "Aug '22",
      "Sep '22",
      "Oct '22",
      "Nov '22"
    ];
    var colW = chartW / 12.0;
    // draw x Label
    var x = rect.left;
    for (var i = 0; i < 13; i++) {
      drawText(canvas, Offset(x, rect.bottom + 15), 20, labelStyle, xLabel[i]);
      x += colW;
    } // print max value
  }
}
