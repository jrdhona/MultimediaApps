import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedDashboard extends StatefulWidget {
  const SpeedDashboard({super.key});

  @override
  State<SpeedDashboard> createState() => _SpeedDashboardState();
}

class _SpeedDashboardState extends State<SpeedDashboard> {
  final double _speed = 120;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(150),
            image: DecorationImage(
                image: AssetImage('assets/images/speed_background.jpg'),
                fit: BoxFit.fill)),
        child: SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 150,
              axisLabelStyle: GaugeTextStyle(color: Colors.white),
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  endValue: 50,
                  color: Colors.green,
                  startWidth: 10,
                  endWidth: 10,
                ),
                GaugeRange(
                    startValue: 50,
                    endValue: 100,
                    color: Colors.orange,
                    startWidth: 10,
                    endWidth: 10),
                GaugeRange(
                    startValue: 100,
                    endValue: 150,
                    color: Colors.red,
                    startWidth: 10,
                    endWidth: 10)
              ],
              pointers: <GaugePointer>[NeedlePointer(value: _speed)],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Text('${_speed.toStringAsFixed(0)} KM/H',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    angle: 90,
                    positionFactor: 0.5)
              ],
            )
          ],
        ),
      ),
    );
  }
}