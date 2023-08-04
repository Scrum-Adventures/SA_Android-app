import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scope_inspector/build.dart';

void main() {
  testWidgets('ImageWidget Navigation Test', (WidgetTester tester) async {
    // Create a mock function for navigation
    String? pushedRoute;
    void mockNavigator(String route) {
      pushedRoute = route;
    }

    // Build the widget that contains the ImageWidget
    await tester.pumpWidget(MaterialApp(
      // Mock the navigator to capture the pushed route
      navigatorObservers: [MockNavigatorObserver(mockNavigator)],
      home: Scaffold(
        body: ImageWidget('assets/home/calculator.png', '/timebox.dart'),
      ),
      routes: {
        '/timebox.dart': (context) => Scaffold(
          appBar: AppBar(title: Text('Image Detail')),
          body: Text('Image detail page content'),
        ),
      },
    ));

    // Find the button by its text
    final buttonFinder = find.byType(ImageWidget);

    // Ensure that the button exists
    expect(buttonFinder, findsOneWidget);

    // Simulate a tap on the button
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    // Verify that the correct route was pushed
    expect(pushedRoute, '/timebox.dart');
  });
}

// Mock NavigatorObserver to intercept the navigation
class MockNavigatorObserver extends NavigatorObserver {
  final Function(String route) onNavigate;

  MockNavigatorObserver(this.onNavigate);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is MaterialPageRoute) {
      onNavigate(route.settings.name ?? '');
    }
  }
}