# audio_progress_bars

A package provides an easy way to add wave bars in Flutter project.

<p>
    <img src="https://github.com/al-mohad/audio_progress_bars/screenshots/wavebar.gif?raw=true" width=300px/>
</p>

## Getting Started

You should ensure that you add the following dependency in your Flutter project.

```yaml
dependencies:
  audio_progress_bars: "^0.0.1"
```

You should then run `flutter packages upgrade` or update your packages in IntelliJ.

## How to use

```dart
import 'package:audio_progress_bars/audio_progress_bars.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        title: 'Audio Progress Bars',
        theme: ThemeData(),
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  final List<double> values = [];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    var rng = new Random();
    for (var i = 0; i < 100; i++) {
      values.add(rng.nextInt(70) * 1.0);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Audio Progress Bars"),
      ),
      body: Center(
        child: WaveProgressBar(
          progressPercentage: 20,
          listOfHeights: values,
          width: queryData.size.width,
          initalColor: Colors.grey,
          progressColor: Colors.red,
          backgroundColor: Colors.white,
          timeInMilliSeconds: 2000,
          isHorizontallyAnimated: true,
          isVerticallyAnimated: true,
        ),
      ),
    );
  }
}
