import 'package:flutter/material.dart';
import 'package:futsal/imports/futsal_profile_pic_strap.dart';
import 'package:futsal/imports/futsal_profile_detail.dart';
import 'package:futsal/imports/futsal_profile_map.dart';

class FutsalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List location = [27.67, 85.43];
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            FutsalProfileMap(
                futsalName: 'Dunder Mifflen',
                textLocation: 'Scranton, Penslavania',
                location: location),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Details(),
                PicStarp(),
              ]),
            )),
          ],
        ),
        Positioned(
          top: 15.0,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
      ]),
    );
  }
}
