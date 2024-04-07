// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'owners/owners_page.dart';
import 'veterinarians/veterinarians_page.dart';

/**
 *
 */
class MyHomepage extends StatefulWidget {
  /**
   *
   */
  MyHomepage({Key? key}) : super(key: key);

  /**
   *
   */
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

/**
 *
 */
class _MyHomepageState extends State<MyHomepage> {

  /**
   *
   */
  int _selectedIndex = 0;

  /**
   *
   */
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  /**
   *
   */
  static List<Widget> _widgetOptions = <Widget>[
    Text(''),
    OwnersPage(title: 'PetClinic'),
    VeterinariansPage(title: 'PetClinic'),
  ];

  /**
   *
   */
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /**
   *
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PetClinic'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Owners'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
              label: 'Vets'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
