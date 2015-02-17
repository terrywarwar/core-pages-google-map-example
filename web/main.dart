import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:core_elements/core_pages.dart';

import 'package:route_hierarchical/client.dart';
import 'package:logging/logging.dart';





CorePages md;

main() {
  new Logger('')
      ..level = Level.FINEST
      ..onRecord.listen((r) => print('[${r.level}] ${r.message}'));


  
  initPolymer().run(() {

    Polymer.onReady.then((_) {
      md = querySelector('#pages') as CorePages;
      print(md);

      var router = new Router(useFragment: true);
      router.root
        ..addRoute(name: 'home', defaultRoute: true, path: '/home', enter: _showHomeView)
        ..addRoute(name: 'map', path: '/map', enter: _showMapView);

      router.listen();
    });
  });
}



void _showHomeView(RouteEvent e) {
  md.selected = 0;
}

void _showMapView(RouteEvent e) {
  print("show map");
  md.selected = 1;
}