
@HtmlImport('main_app.html')
library demo.app;

import 'package:demo/elements.dart';

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:route_hierarchical/client.dart';
import 'package:logging/logging.dart';

//Hash below when you get the error Bad state: No element.  
//Build project first then re-enable.
import 'package:demo/home_view.dart';
import 'package:demo/map_view.dart';





/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement {


  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created(){

  }



//  // Optional lifecycle methods - uncomment if needed.
//
/// Called when an instance of main-app is inserted into the DOM.
  attached() {
    super.attached();
    
  }
//
//  /// Called when an instance of main-app is removed from the DOM.
//  detached() {
//    super.detached();
//
//  }
//
  /// Called when an attribute (such as a class) of an instance of
  /// main-app is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanges(name, oldValue, newValue);
//  }

  /// Called when main-app has been fully prepared (Shadow DOM created,
  /// property observers set up, event listeners attached).
  ready() {
    new Logger('')
          ..level = Level.FINEST
          ..onRecord.listen((r) => print('[${r.level}] ${r.message}'));

        var router = new Router(useFragment: true);

        router.root
          ..addRoute(name: 'home', defaultRoute: true, path: '/home', enter: _showHomeView)
          ..addRoute(name: 'map', path: '/map', enter: _showMapView);

        router.listen();

  }
//
//  domReady(){
//    super.domReady();
//
//  }

  void _showMapView(RouteEvent e) {
    print("show map");
    var md = $['pages'] as CorePages;
    md.selected = 1;


  }
  void _showHomeView(RouteEvent e) {
    print("show home");
    var md = $['pages'] as CorePages;
    md.selected = 0;

  }
}
