// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';


import 'package:core_elements/core_drawer_panel.dart';
import 'package:polymer/polymer.dart';


/// A Polymer `<home-view>` element.
@CustomTag('home-view')
class HomeView extends PolymerElement {
  
  /// Constructor used to create instance of MainApp.
  HomeView.created() : super.created(){


  }


  void onNavClick(Event e, var detail, Node target) {
    CoreDrawerPanel pnl = $['drawerPanel'] as CoreDrawerPanel;
    pnl.togglePanel();

  }

//  // Optional lifecycle methods - uncomment if needed.
//
///// Called when an instance of main-app is inserted into the DOM.
//  attached() {
//    super.attached();
//
//  }
//
//  /// Called when an instance of main-app is removed from the DOM.
//  detached() {
//    super.detached();
//
//  }
//
////  /// Called when an attribute (such as a class) of an instance of
////  /// main-app is added, changed, or removed.
////  attributeChanged(String name, String oldValue, String newValue) {
////    super.attributeChanges(name, oldValue, newValue);
////  }
//
////  /// Called when main-app has been fully prepared (Shadow DOM created,
////  /// property observers set up, event listeners attached).
//  ready() {
//
//
//  }
//
//  domReady(){
//    super.domReady();
//
//  }
}
