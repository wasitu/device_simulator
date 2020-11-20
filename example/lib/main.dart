import 'package:flutter/material.dart';
import 'package:device_simulator/device_simulator.dart';

// It's good practice to define a constant for enabling the device simulator
// so you can easily turn it on or off
const bool debugEnableDeviceSimulator = true;

void main() => runApp(MyApp());

// Insert Device simulator at the top of your widget, as a child of your
// App widget. Build the rest of your widget tree as you would normally do.
class MyApp extends StatelessWidget {
  final scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeviceSimulator demo',
      home: Builder(builder: (context) {
        return Scaffold(
          key: scaffoldState,
          appBar: AppBar(
            title: Text('DeviceSimulator Demo'),
            actions: [
              FlatButton(
                  onPressed: () {
                    final next = Scaffold(
                        appBar: AppBar(),
                        body: Center(
                          child: Text('AAAAA'),
                        ));
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => next));
                    scaffoldState.currentState.showBottomSheet((context) {
                      return next;
                    });
                  },
                  child: Text('NEXT')),
            ],
          ),
          body: Center(
            child: Text('Hello multiple resolutions!'),
          ),
        );
      }),
      builder: (context, child) {
        return DeviceSimulator(
          brightness: Brightness.dark,
          enable: debugEnableDeviceSimulator,
          child: child,
        );
      },
    );
  }
}

class CustomMaterialApp extends MaterialApp {}
