import 'package:flutter/material.dart';
import 'package:device_simulator/device_simulator.dart';

// It's good practice to define a constant for enabling the device simulator
// so you can easily turn it on or off
const bool debugEnableDeviceSimulator = true;

void main() => runApp(MyApp());

// Insert Device simulator at the top of your widget, as a child of your
// App widget. Build the rest of your widget tree as you would normally do.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeviceSimulator(
      brightness: Brightness.dark,
      enable: debugEnableDeviceSimulator,
      child: MaterialApp(
        title: 'DeviceSimulator demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('DeviceSimulator Demo'),
          ),
          body: Center(
            child: Text('Hello multiple resolutions!'),
          ),
        ),
      ),
    );
  }
}
