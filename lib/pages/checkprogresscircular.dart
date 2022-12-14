// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProgressCircular extends StatefulWidget {
  const ProgressCircular({Key? key}) : super(key: key);

  @override
  State<ProgressCircular> createState() => _ProgressCircularState();
}

class _ProgressCircularState extends State<ProgressCircular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfRadialGauge(
            backgroundColor: Color(0xff95D8EB),
            axes: <RadialAxis>[
              RadialAxis(
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      positionFactor: 0.1,
                      angle: 90,
                      widget: Text(
                        48.toStringAsFixed(0) + '%',
                        style: TextStyle(fontSize: 11),
                      ))
                ],
                pointers: <GaugePointer>[
                  RangePointer(
                      value: 48,
                      cornerStyle: CornerStyle.bothCurve,
                      width: 0.3,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Color(0xff597bc2))
                ],
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.3,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Color.fromARGB(30, 0, 169, 181),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
              )
            ]),
      ),
    );
  }
}

class ProgressCircular2 extends StatefulWidget {
  const ProgressCircular2({Key? key}) : super(key: key);

  @override
  State<ProgressCircular2> createState() => _ProgressCircularState2();
}

class _ProgressCircularState2 extends State<ProgressCircular2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfRadialGauge(
            backgroundColor: Color(0xffB1F0D8),
            axes: <RadialAxis>[
              RadialAxis(
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      positionFactor: 0.1,
                      angle: 90,
                      widget: Text(
                        48.toStringAsFixed(0) + '%',
                        style: TextStyle(fontSize: 16),
                      ))
                ],
                pointers: <GaugePointer>[
                  RangePointer(
                    value: 48,
                    cornerStyle: CornerStyle.bothCurve,
                    width: 0.3,
                    sizeUnit: GaugeSizeUnit.factor,
                    // color: Color(0xff597bc2)
                    color: Color(0xff275840),
                  )
                ],
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                axisLineStyle: AxisLineStyle(
                  thickness: 0.3,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Color.fromARGB(30, 0, 169, 181),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
              )
            ]),
      ),
    );
  }
}
