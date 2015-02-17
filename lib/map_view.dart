// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:core_elements/core_drawer_panel.dart';
import 'package:polymer/polymer.dart';
import 'package:google_maps/google_maps.dart';

/// A Polymer `<map-view>` element.
@CustomTag('map-view')
class MapView extends PolymerElement {

  GMap map;
  LatLng centre; 

  /// Constructor used to create instance of MainApp.
  MapView.created() : super.created(){
    centre = new LatLng(-34.397, 150.644);
    final mapOptions = new MapOptions()
      ..zoom = 8
      ..center = centre
      ..mapTypeId = MapTypeId.ROADMAP
    ;
    var mapView = $['mapView'] as DivElement;
    map = new GMap(mapView, mapOptions);

  }



  void onNavClick(Event e, var detail, Node target) {
    CoreDrawerPanel pnl = $['drawerPanel'] as CoreDrawerPanel;
    pnl.togglePanel();

  }

  // Optional lifecycle methods - uncomment if needed.

/// Called when an instance of map is inserted into the DOM.
  attached() {
    super.attached();
    // this allow to notify the map that the size of the canvas has changed.
    // in some cases, the map behaves like it has a 0*0 size.
    event.trigger(map, 'resize', []);
    map.center = centre;
    map.panTo(centre);
  }

  /// Called when an instance of main-app is removed from the DOM.
  detached() {
    super.detached();
         //map = null;
    //print("map detached");

  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// main-app is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanges(name, oldValue, newValue);
//  }

//  /// Called when main-app has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//
//
//  }
//
//  domReady(){
//    super.domReady();
//  }
}
