import 'package:flutter/material.dart';
import 'package:futsal/imports/booking_card.dart';

class Bookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookings'),
        centerTitle: true,
        //leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.green.shade400,
      ),
      body: Column(
        children: <Widget>[
          BookingCard(),
          BookingCard(),
          BookingCard(),
        ],
      ),
    );
  }
}
