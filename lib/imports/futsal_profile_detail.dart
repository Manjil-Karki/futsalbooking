import 'package:flutter/material.dart';
import 'package:futsal/screens/futsal_book.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          _ratingRate(context),
          SizedBox(height: 20),
          _bookingsAndDetails(context),
        ],
      ),
    );
  }
}

Widget _ratingRate(BuildContext context) {
  Future<Widget> _popUpRate() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Price'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Morning'),
                Text('1000'),
                Text('Day'),
                Text('1300'),
                Text('Evening'),
                Text('900'),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                textColor: Theme.of(context).primaryColor,
                child: const Text('Okay, got it!'),
              ),
            ],
          );
        });
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RaisedButton(
        onPressed: () => _popUpRate(),
        color: Colors.green,
        child: Text('Price'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      )
    ],
  );
}

Widget _bookingsAndDetails(BuildContext context) {
  Future<Widget> _popUpContact() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Contacts'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text('Micheal Scott'), Text('98XXXXXXXX')],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                textColor: Theme.of(context).primaryColor,
                child: const Text('Okay, got it!'),
              ),
            ],
          );
        });
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _availablity('Parking Availablity', true),
          SizedBox(height: 10),
          _availablity('Cafeteria', false),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FutsalBookPage()),
              );
            },
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Bookings'),
          ),
          RaisedButton.icon(
            // textColor: Colors.green,
            color: Colors.green,
            onPressed: () => _popUpContact(),
            icon: Icon(Icons.phone),
            label: Text('Contacts'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          )
        ],
      )
    ],
  );
}

Widget _availablity(String text, bool isPresent) {
  return Row(
    children: <Widget>[
      Text(text),
      Container(
        margin: EdgeInsets.only(left: 15),
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: isPresent ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(15)),
      )
    ],
  );
}
