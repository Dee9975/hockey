import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'navigation_provider.dart';

class TeamBloc {
  final navigationController = BehaviorSubject();
  NavigationProvider navigationProvider = NavigationProvider();

  Stream get getNavigation => navigationController.stream;

  void updateNavigation(String navigation) {
    navigationProvider.updateNavigation(navigation);
    navigationController.sink.add(navigationProvider.currentNavigation);
  }

  void dispose() {
    navigationController.close();
  }
}

final bloc = TeamBloc();