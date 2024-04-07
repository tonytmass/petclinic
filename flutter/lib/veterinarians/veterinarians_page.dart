// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';

import 'veterinarian.dart';
import 'veterinarian_provider.dart';

/**
 *
 */
class VeterinariansPage extends StatefulWidget {
  /**
   *
   */
  VeterinariansPage({Key? key, this.title}) : super(key: key);

  /**
   *
   */
  final String? title;

  /**
   *
   */
  @override
  _VeterinariansPageState createState() => _VeterinariansPageState();
}

/**
 *
 */
class _VeterinariansPageState extends State<VeterinariansPage> {
  /**
   *
   */
  VeterinarianProvider? provider;

  /**
   *
   */
  @override
  void initState() {
    provider = VeterinarianProvider();

    super.initState();
  }

  /**
   *
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: provider?.getVeterinarians(),
        builder: (context, AsyncSnapshot snapshot) {
          log("$snapshot.data");
          final veterinarians = snapshot.data ;
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 2,
                  color: Colors.black,
                );
              },
              itemCount: veterinarians.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${veterinarians[index].firstName} ${veterinarians[index].lastName}'),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
