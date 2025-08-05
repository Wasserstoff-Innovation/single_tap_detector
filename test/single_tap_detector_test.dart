import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:single_tap_detector/single_tap_detector.dart';

void main() {
  testWidgets('SingleTapDetector basic test', (WidgetTester tester) async {
    bool tapped = false;
    
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SingleTapDetector(
              onTap: () => tapped = true,
              child: Container(
                width: 100, 
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.byType(Container), warnIfMissed: false);
    await tester.pump();
    
    expect(tapped, isTrue);
    
    // Wait for the timer to complete
    await tester.pump(const Duration(milliseconds: 1100));
  });
}
