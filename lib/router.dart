import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/not_found_screen.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('home'),
        child: HomeScreen(),
      ),
    ];
  }
}

class NotFoundLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('404'),
        child: NotFoundScreen(),
      ),
    ];
  }
}

final routerDelegate = BeamerDelegate(
  locationBuilder: BeamerLocationBuilder(
    beamLocations: [
      HomeLocation(),
      NotFoundLocation(),
    ],
  ),
);
